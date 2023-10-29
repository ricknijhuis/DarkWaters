const std = @import("std");
const win32 = std.os.windows;

pub const SM_CXSCREEN = 0;
pub const SM_CYSCREEN = 1;
pub const WS_EX_APPWINDOW = win32.user32.WS_EX_APPWINDOW;
pub const WS_CLIPSIBLINGS = win32.user32.WS_CLIPSIBLINGS;
pub const WS_CLIPCHILDREN = win32.user32.WS_CLIPCHILDREN;
pub const WS_SYSMENU = win32.user32.WS_SYSMENU;
pub const WS_MINIMIZEBOX = win32.user32.WS_MINIMIZEBOX;
pub const WS_CAPTION = win32.user32.WS_CAPTION;
pub const WS_MAXIMIZEBOX = win32.user32.WS_MAXIMIZEBOX;
pub const WS_THICKFRAME = win32.user32.WS_THICKFRAME;
pub const WS_POPUP = win32.user32.WS_POPUP;
pub const WS_EX_TOPMOST = win32.user32.WS_EX_TOPMOST;
pub const WS_EX_WINDOWEDGE = win32.user32.WS_EX_WINDOWEDGE;
pub const WS_OVERLAPPEDWINDOW = win32.user32.WS_OVERLAPPEDWINDOW;
pub const WS_VISIBLE = win32.user32.WS_VISIBLE;
pub const WINAPI = win32.WINAPI;
pub const TRUE = win32.TRUE;
pub const FALSE = win32.FALSE;
pub const CS_HREDRAW = win32.user32.CS_HREDRAW;
pub const CS_VREDRAW = win32.user32.CS_VREDRAW;
pub const CS_OWNDC = win32.user32.CS_OWNDC;
pub const PFD_DRAW_TO_WINDOW = 0x00000004;
pub const PFD_SUPPORT_OPENGL = 0x00000020;
pub const PFD_DOUBLEBUFFER = 0x00000001;
pub const PFD_TYPE_RGBA = 0;
pub const WGL_SUPPORT_OPENGL_ARB = 0x2010;
pub const WGL_DRAW_TO_WINDOW_ARB = 0x2001;
pub const WGL_PIXEL_TYPE_ARB = 0x2013;
pub const WGL_TYPE_RGBA_ARB = 0x202b;
pub const WGL_ACCELERATION_ARB = 0x2003;
pub const WGL_NO_ACCELERATION_ARB = 0x2025;
pub const WGL_RED_BITS_ARB = 0x2015;
pub const WGL_RED_SHIFT_ARB = 0x2016;
pub const WGL_GREEN_BITS_ARB = 0x2017;
pub const WGL_GREEN_SHIFT_ARB = 0x2018;
pub const WGL_BLUE_BITS_ARB = 0x2019;
pub const WGL_BLUE_SHIFT_ARB = 0x201a;
pub const WGL_ALPHA_BITS_ARB = 0x201b;
pub const WGL_ALPHA_SHIFT_ARB = 0x201c;
pub const WGL_ACCUM_BITS_ARB = 0x201d;
pub const WGL_ACCUM_RED_BITS_ARB = 0x201e;
pub const WGL_ACCUM_GREEN_BITS_ARB = 0x201f;
pub const WGL_ACCUM_BLUE_BITS_ARB = 0x2020;
pub const WGL_ACCUM_ALPHA_BITS_ARB = 0x2021;
pub const WGL_DEPTH_BITS_ARB = 0x2022;
pub const WGL_STENCIL_BITS_ARB = 0x2023;
pub const WGL_AUX_BUFFERS_ARB = 0x2024;
pub const WGL_STEREO_ARB = 0x2012;
pub const WGL_DOUBLE_BUFFER_ARB = 0x2011;
pub const WGL_SAMPLES_ARB = 0x2042;
pub const WGL_FRAMEBUFFER_SRGB_CAPABLE_ARB = 0x20a9;
pub const WGL_CONTEXT_DEBUG_BIT_ARB = 0x00000001;
pub const WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB = 0x00000002;
pub const WGL_CONTEXT_PROFILE_MASK_ARB = 0x9126;
pub const WGL_CONTEXT_CORE_PROFILE_BIT_ARB = 0x00000001;
pub const WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB = 0x00000002;
pub const WGL_CONTEXT_MAJOR_VERSION_ARB = 0x2091;
pub const WGL_CONTEXT_MINOR_VERSION_ARB = 0x2092;
pub const WGL_CONTEXT_FLAGS_ARB = 0x2094;
pub const WGL_CONTEXT_ES2_PROFILE_BIT_EXT = 0x00000004;
pub const WGL_CONTEXT_ROBUST_ACCESS_BIT_ARB = 0x00000004;
pub const WGL_LOSE_CONTEXT_ON_RESET_ARB = 0x8252;
pub const WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB = 0x8256;
pub const WGL_NO_RESET_NOTIFICATION_ARB = 0x8261;
pub const WGL_CONTEXT_RELEASE_BEHAVIOR_ARB = 0x2097;
pub const WGL_CONTEXT_RELEASE_BEHAVIOR_NONE_ARB = 0;
pub const WGL_CONTEXT_RELEASE_BEHAVIOR_FLUSH_ARB = 0x2098;
pub const WGL_CONTEXT_OPENGL_NO_ERROR_ARB = 0x31b3;
pub const WGL_COLORSPACE_EXT = 0x309d;
pub const WGL_COLORSPACE_SRGB_EXT = 0x3089;
pub const WGL_COLOR_BITS_ARB = 0x2014;
pub const WGL_FULL_ACCELERATION_ARB = 0x2027;
pub const SW_HIDE = win32.user32.SW_HIDE;
pub const SW_SHOW = win32.user32.SW_SHOW;
pub const SW_NORMAL = win32.user32.SW_NORMAL;
pub const SW_SHOWMAXIMIZED = win32.user32.SW_SHOWMAXIMIZED;
pub const GWL_STYLE = win32.user32.GWL_STYLE;
pub const GWL_EXSTYLE = win32.user32.GWL_EXSTYLE;
pub const SWP_NOZORDER = 0x0004;
pub const SWP_NOACTIVATE = 0x0010;
pub const SWP_FRAMECHANGED = 0x0020;
pub const SWP_NOCOPYBITS = 0x0100;
pub const SWP_NOOWNERZORDER = 0x0200;
pub const WM_INPUT = win32.user32.WM_INPUT;
pub const PM_REMOVE = win32.user32.PM_REMOVE;
pub const MONITOR_DEFAULTTONULL = 0x00000000;
pub const MONITOR_DEFAULTTOPRIMARY = 0x00000001;
pub const MONITOR_DEFAULTTONEAREST = 0x00000002;

// win32 types
pub const HWND = win32.HWND;
pub const WPARAM = win32.WPARAM;
pub const LPARAM = win32.LPARAM;
pub const HINSTANCE = win32.HINSTANCE;
pub const HMODULE = win32.HMODULE;
pub const DWORD = win32.DWORD;
pub const HMENU = win32.HMENU;
pub const LPVOID = win32.LPVOID;
pub const HDC = win32.HDC;
pub const HGLRC = win32.HGLRC;
pub const ATOM = win32.ATOM;
pub const WCHAR = win32.WCHAR;
pub const WNDCLASSEXW = win32.user32.WNDCLASSEXW;
pub const PIXELFORMATDESCRIPTOR = win32.gdi32.PIXELFORMATDESCRIPTOR;
pub const LPPIXELFORMATDESCRIPTOR = *PIXELFORMATDESCRIPTOR;
pub const HCURSOR = win32.HCURSOR;
pub const LPCSTR = win32.LPCSTR;
pub const LPCWSTR = win32.LPCWSTR;
pub const HICON = win32.HICON;
pub const UINT = win32.UINT;
pub const FARPROC = win32.FARPROC;
pub const POINT = win32.POINT;
pub const MSG = win32.user32.MSG;
pub const BOOL = win32.BOOL;
pub const RECT = win32.RECT;
pub const HMONITOR = *opaque {};
pub const MONITORINFO = extern struct {
    cbSize: DWORD = @sizeOf(MONITORINFO),
    rcMonitor: RECT,
    rcWork: RECT,
    dwFlags: DWORD,
};

// raw win32 funcitons
pub const GetLastError = win32.kernel32.GetLastError;
const GetModuleHandleW = win32.kernel32.GetModuleHandleW;
const ChoosePixelFormat = win32.gdi32.ChoosePixelFormat;
const SetPixelFormat = win32.gdi32.SetPixelFormat;
const WglCreateContext = win32.gdi32.wglCreateContext;
const WglMakeCurrent = win32.gdi32.wglMakeCurrent;
const LoadLibraryW = win32.kernel32.LoadLibraryW;
const FreeLibrary = win32.kernel32.FreeLibrary;
const GetProcAddress = win32.kernel32.GetProcAddress;
const PeekMessageW = win32.user32.PeekMessageW;

extern "user32" fn GetSystemMetrics(nIndex: i32) callconv(WINAPI) i32;
extern "user32" fn LoadCursorW(?HINSTANCE, LPCWSTR) callconv(WINAPI) ?HCURSOR;
extern "user32" fn LoadIconW(?HINSTANCE, LPCWSTR) callconv(WINAPI) ?HICON;
extern "user32" fn SetWindowPos(HWND, HWNDZ, i32, i32, i32, i32, UINT) callconv(WINAPI) BOOL;
extern "user32" fn MonitorFromWindow(HWND, DWORD) HMONITOR;
extern "user32" fn GetMonitorInfoW(HMONITOR, *MONITORINFO) callconv(WINAPI) BOOL;
extern "user32" fn MonitorFromPoint(POINT, DWORD) HMONITOR;
extern "gdi32" fn DescribePixelFormat(HDC, i32, UINT, LPPIXELFORMATDESCRIPTOR) callconv(WINAPI) i32;

// zigified api, if available utf16 wide functions are used
pub const HWNDZ = *allowzero opaque {};
pub const HWND_TOP = typedConst(HWNDZ, @as(i32, 0));
pub const HWND_BOTTOM = typedConst(HWNDZ, @as(i32, 1));
pub const HWND_TOPMOST = typedConst(HWNDZ, @as(i32, -1));
pub const HWND_NOTOPMOST = typedConst(HWNDZ, @as(i32, -2));

pub const unexpectedError = win32.unexpectedError;
pub const registerClassEx = win32.user32.registerClassExW;
pub const showWindow = win32.user32.showWindow;
pub const getDC = win32.user32.getDC;
pub const releaseDC = win32.user32.releaseDC;
pub const getLastError = GetLastError;
pub const messageBox = win32.user32.messageBoxW;
pub const postQuitMessage = win32.user32.postQuitMessage;
pub const dispatchMessage = win32.user32.dispatchMessageW;
pub const translateMessage = win32.user32.translateMessage;
pub const setWindowLongPtr = win32.user32.setWindowLongPtrW;
pub const getWindowLongPtr = win32.user32.getWindowLongPtrW;
pub const createWindowEx = win32.user32.createWindowExW;
pub const destroyWindow = win32.user32.destroyWindow;
pub const adjustWindowRect = win32.user32.adjustWindowRectEx;
pub const defWindowProc = win32.user32.defWindowProcW;

pub fn monitorFromPoint(pt: POINT, dwFlags: DWORD) HMONITOR {
    return MonitorFromPoint(pt, dwFlags);
}

pub fn getMonitorInfo(hMonitor: HMONITOR, lpmi: *MONITORINFO) bool {
    return GetMonitorInfoW(hMonitor, lpmi) == TRUE;
}

pub fn monitorFromWindow(hWnd: HWND, dwFlags: DWORD) HMONITOR {
    return MonitorFromWindow(hWnd, dwFlags);
}

pub fn peekMessage(lpMsg: *MSG, hWnd: ?HWND, wMsgFilterMin: u32, wMsgFilterMax: u32, wRemoveMsg: u32) bool {
    if (PeekMessageW(
        lpMsg,
        hWnd,
        wMsgFilterMin,
        wMsgFilterMax,
        wRemoveMsg,
    ) == FALSE)
        return false;

    return true;
}

pub fn setWindowPos(hWnd: HWND, hWndInsertAfter: HWNDZ, X: i32, Y: i32, cx: i32, cy: i32, uFlags: UINT) !void {
    if (SetWindowPos(hWnd, hWndInsertAfter, X, Y, cx, cy, uFlags) != TRUE)
        return unexpectedError(GetLastError());
}

pub fn getSystemMetrics(nIndex: i32) i32 {
    return GetSystemMetrics(nIndex);
}

pub fn loadIcon(hInstance: ?HINSTANCE, lpIconName: [*:0]const u16) !HICON {
    if (LoadIconW(hInstance, lpIconName)) |icon| return icon;
    return unexpectedError(GetLastError());
}

pub fn loadCursor(hInstance: ?HINSTANCE, lpCursorName: [*:0]const u16) !HCURSOR {
    if (LoadCursorW(hInstance, lpCursorName)) |cursor| return cursor;
    return unexpectedError(GetLastError());
}

pub fn choosePixelFormat(
    hdc: ?HDC,
    ppfd: ?*const PIXELFORMATDESCRIPTOR,
) i32 {
    if (ChoosePixelFormat(hdc, ppfd) == 0)
        return unexpectedError(GetLastError());
}

pub fn setPixelFormat(
    hdc: ?HDC,
    format: i32,
    ppfd: ?*const PIXELFORMATDESCRIPTOR,
) !void {
    if (SetPixelFormat(hdc, format, ppfd) != true) {
        switch (GetLastError()) {
            .INVALID_PIXEL_FORMAT => return error.InvalidPixelFormat,
            else => |err| return unexpectedError(err),
        }
    }
}

pub fn wglCreateContext(hdc: ?HDC) !HGLRC {
    if (WglCreateContext(hdc)) |hglrc| return hglrc;

    return unexpectedError(GetLastError());
}

pub fn wglMakeCurrent(hdc: ?HDC, hglrc: ?HGLRC) !void {
    if (WglMakeCurrent(hdc, hglrc) != TRUE) {
        switch (GetLastError()) {
            .TRANSFORM_NOT_SUPPORTED => return error.TransformNotSupported,
            else => |err| return unexpectedError(err),
        }
    }
}

pub fn loadLibrary(lpLibFileName: [*:0]const u16) !HMODULE {
    if (LoadLibraryW(lpLibFileName)) |mod| return mod;

    switch (GetLastError()) {
        .DLL_INIT_FAILED => return error.DllInitFailed,
        .MOD_NOT_FOUND => return error.ModNotFound,
        else => |err| return unexpectedError(err),
    }
}

pub fn freeLibrary(hModule: HMODULE) !void {
    if (FreeLibrary(hModule) != TRUE) {
        switch (GetLastError()) {
            .MOD_NOT_FOUND => return error.ModNotFound,
            else => |err| return unexpectedError(err),
        }
    }
}

pub fn getProcAddress(hModule: HMODULE, lpProcName: [*]const u8) !FARPROC {
    if (GetProcAddress(hModule, lpProcName)) |proc| return proc;

    switch (GetLastError()) {
        .MOD_NOT_FOUND => return error.ModNotFound,
        .PROC_NOT_FOUND => return error.ProcNotFound,
        else => |err| return unexpectedError(err),
    }
}

pub fn getModuleHandle(lpModuleName: ?[*:0]const u16) !HMODULE {
    if (GetModuleHandleW(lpModuleName)) |mod| return mod;

    switch (GetLastError()) {
        .MOD_NOT_FOUND => return error.ModNotFound,
        else => |err| return unexpectedError(err),
    }
}

// see: https://github.com/marlersoft/zigwin32/blob/main/win32/zig.zig
fn typedConst(comptime T: type, comptime value: anytype) T {
    return typedConst2(T, T, value);
}

fn typedConst2(comptime ReturnType: type, comptime SwitchType: type, comptime value: anytype) ReturnType {
    const target_type_error = @as([]const u8, "typedConst cannot convert to " ++ @typeName(ReturnType));
    const value_type_error = @as([]const u8, "typedConst cannot convert " ++ @typeName(@TypeOf(value)) ++ " to " ++ @typeName(ReturnType));

    switch (@typeInfo(SwitchType)) {
        .Int => |target_type_info| {
            if (value >= std.math.maxInt(SwitchType)) {
                if (target_type_info.signedness == .signed) {
                    const UnsignedT = @Type(std.builtin.Type{ .Int = .{ .signedness = .unsigned, .bits = target_type_info.bits } });
                    return @as(SwitchType, @bitCast(@as(UnsignedT, value)));
                }
            }
            return value;
        },
        .Pointer => |target_type_info| switch (target_type_info.size) {
            .One, .Many, .C => {
                switch (@typeInfo(@TypeOf(value))) {
                    .ComptimeInt, .Int => {
                        const usize_value = if (value >= 0) value else @as(usize, @bitCast(@as(isize, value)));
                        return @as(ReturnType, @ptrFromInt(usize_value));
                    },
                    else => @compileError(value_type_error),
                }
            },
            else => target_type_error,
        },
        .Optional => |target_type_info| switch (@typeInfo(target_type_info.child)) {
            .Pointer => return typedConst2(ReturnType, target_type_info.child, value),
            else => target_type_error,
        },
        .Enum => |_| switch (@typeInfo(@TypeOf(value))) {
            .Int => return @as(ReturnType, @enumFromInt(value)),
            else => target_type_error,
        },
        else => @compileError(target_type_error),
    }
}
