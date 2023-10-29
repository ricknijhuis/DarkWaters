const std = @import("std");
const engine = @import("engine/engine.zig");
const win32 = @import("engine/platform/win32.zig");
pub fn main() void {
    const allocator = std.heap.c_allocator;

    const window_create_info = engine.Window.CreateInfo{
        .title = "Dark Waters",
        .mode = engine.Window.Mode.fullscreen,
        .width = 1280,
        .height = 720,
    };

    const window = engine.Window.init(allocator, &window_create_info) catch |err| {
        std.log.err(" {any}", .{err});
        return;
    };

    while (true) {
        window.pollEvents();
    }
}
