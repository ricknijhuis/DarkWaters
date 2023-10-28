const std = @import("std");
const engine = @import("engine/engine.zig");

pub fn testt() !void {
    return error.unhandledError;
}

pub fn main() void {
    testt() catch |err| {
        std.debug.print("{s}", .{err});
    };
}
