const std = @import("std");

pub fn build(b: *std.build.Builder) void {
    const lib = b.addSharedLibrary("zig-wasm-freestanding", "src/math.zig", b.version(0,0,1));

    const mode = b.standardReleaseOptions();

    const target = std.zig.CrossTarget.parse(.{.arch_os_abi = "wasm32-freestanding"}) catch unreachable;

    lib.setBuildMode(mode);
    lib.setTarget(target);
    lib.install();
}
