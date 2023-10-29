// const is_windows = @import("builtin").os.tag == .windows;

// const window = @import("platform/window.zig");

// pub const WindowMode = window.WindowMode;
// pub const WindowCreateInfo = window.WindowCreateInfo;
// pub const Window = if (is_windows) @import("platform/win32_window.zig").Window else @import("platform/x11_window.zig").Window;

pub const Window = @import("platform/win32_window.zig");
