const std = @import("std");
const win32 = @import("win32.zig");
const utf8ToUtf16Lit = std.unicode.utf8ToUtf16LeStringLiteral;
const utf8ToUtf16 = std.unicode.utf8ToUtf16LeWithNull;

pub const Mode = enum(i32) {
    windowed,
    borderless,
    fullscreen,
};

pub const CreateInfo = struct {
    mode: Mode,
    width: i32,
    height: i32,
    title: []const u8,
};

const Self = @This();

handle: win32.HWND,
position: win32.RECT,
mode: Mode,

pub fn init(allocator: std.mem.Allocator, create_info: *const CreateInfo) !Self {
    var window = Self{
        .handle = undefined,
        .position = win32.RECT{ .left = 0, .top = 0, .right = create_info.width, .bottom = create_info.height },
        .mode = create_info.mode,
    };

    const instance = @as(win32.HINSTANCE, @ptrCast(try win32.getModuleHandle(null)));

    const class_name = utf8ToUtf16Lit("Dark Waters");

    const class = win32.WNDCLASSEXW{
        .style = win32.CS_HREDRAW | win32.CS_VREDRAW | win32.CS_OWNDC,
        .lpfnWndProc = windowProcedure,
        .hInstance = instance,
        .hCursor = null,
        .hIcon = null,
        .lpszClassName = class_name,
        .lpszMenuName = null,
        .hbrBackground = null,
        .hIconSm = null,
    };

    _ = try win32.registerClassEx(&class);
    const title = try utf8ToUtf16(allocator, create_info.title);
    defer allocator.free(title);

    const style = getWindowStyle(create_info.mode);
    const style_ex = getWindowStyleEx(create_info.mode);

    window.handle = try win32.createWindowEx(
        style_ex,
        class_name,
        title,
        style,
        window.position.left,
        window.position.top,
        window.position.right - window.position.left,
        window.position.bottom - window.position.top,
        null,
        null,
        instance,
        null,
    );

    show(window);
    setMode(window, create_info.mode);

    return window;
}

pub fn show(self: Self) void {
    _ = win32.showWindow(self.handle, win32.SW_SHOW);
}

pub fn hide(self: Self) void {
    win32.showWindow(self.handle, win32.SW_HIDE);
}

pub fn setMode(self: Self, mode: Mode) void {
    const style = getWindowStyle(mode);
    const style_ex = getWindowStyleEx(mode);
    var insert = win32.HWND_NOTOPMOST;
    var position = self.position;

    if (mode == Mode.fullscreen)
        insert = win32.HWND_TOP;

    _ = win32.setWindowLongPtr(self.handle, win32.GWL_STYLE, style) catch unreachable;
    _ = win32.setWindowLongPtr(self.handle, win32.GWL_EXSTYLE, style_ex) catch unreachable;

    if (mode == Mode.fullscreen or mode == Mode.borderless) {
        const monitor = win32.monitorFromWindow(self.handle, win32.MONITOR_DEFAULTTOPRIMARY);
        var monitor_info = win32.MONITORINFO{
            .dwFlags = undefined,
            .rcMonitor = undefined,
            .rcWork = undefined,
        };

        if (!win32.getMonitorInfo(monitor, &monitor_info)) return;

        position.left = monitor_info.rcMonitor.left;
        position.top = monitor_info.rcMonitor.top;
        position.right = monitor_info.rcMonitor.right - monitor_info.rcMonitor.left;
        position.bottom = monitor_info.rcMonitor.bottom - monitor_info.rcMonitor.top;
    }

    _ = win32.setWindowPos(
        self.handle,
        insert,
        position.left,
        position.top,
        position.right - position.left,
        position.bottom - position.top,
        win32.SWP_NOZORDER | win32.SWP_NOACTIVATE | win32.SWP_NOCOPYBITS,
    ) catch unreachable;
}

pub fn pollEvents(self: *const Self) void {
    _ = self;
    var msg: win32.MSG = undefined;
    while (win32.peekMessage(&msg, null, 0, 0, win32.PM_REMOVE)) {
        switch (msg.message) {
            else => {
                _ = win32.translateMessage(&msg);
                _ = win32.dispatchMessage(&msg);
            },
        }
    }
}

fn windowProcedure(hwnd: win32.HWND, uMsg: win32.UINT, wParam: win32.WPARAM, lParam: win32.LPARAM) callconv(.C) isize {
    return win32.defWindowProc(hwnd, uMsg, wParam, lParam);
}

fn getWindowStyle(mode: Mode) u32 {
    var style: u32 = win32.WS_CLIPSIBLINGS | win32.WS_CLIPCHILDREN;

    switch (mode) {
        .windowed => {
            style |= win32.WS_OVERLAPPEDWINDOW;
        },
        .borderless => {
            style |= win32.WS_SYSMENU | win32.WS_MINIMIZEBOX | win32.WS_POPUP;
        },
        .fullscreen => {
            style |= win32.WS_POPUP;
        },
    }

    return style;
}

fn getWindowStyleEx(mode: Mode) u32 {
    var style: u32 = win32.WS_EX_APPWINDOW;

    if (mode == Mode.fullscreen or mode == Mode.borderless)
        style |= win32.WS_EX_TOPMOST;

    return style;
}
