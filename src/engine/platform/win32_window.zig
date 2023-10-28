const std = @import("std");
const win32 = @import("win32.zig");
const utf8ToUtf16 = std.unicode.utf8ToUtf16LeStringLiteral;
const unexpectedError = std.os.windows.unexpectedError;

const Window = struct {
    const Self = @This();

    handle: win32.HWND,
    device_context: win32.HDC,
    render_context: win32.HGLRC,

    pub fn init() !Self {
        const instance = win32.GetModuleHandleW(null);
        _ = instance;

        const window_class = win32.WNDCLASSEXW{
            .cbSize = @sizeOf(win32.WNDCLASSEXW),
            .style = win32.CS_HREDRAW | win32.CS_VREDRAW | win32.CS_OWNDC,
            .lpfnWndProc = null,
            .hInstance = win32.GetModuleHandleW(null),
            .hCursor = null,
            .hIcon = null,
            .lpszClassName = utf8ToUtf16("Dark Waters"),
        };
        _ = window_class;
    }
};
