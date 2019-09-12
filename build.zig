const Builder = @import("std").build.Builder;

pub fn build(b: *Builder) void {
    const mode = b.standardReleaseOptions();
    const exe = b.addExecutable("zong", "src/main.zig");
    
    exe.addIncludeDir("/usr/include");
    exe.addIncludeDir("/usr/local/include");
    exe.addLibPath("/usr/local/lib");
    
    exe.linkSystemLibrary("c");
    exe.linkSystemLibrary("stdc++");
    exe.linkSystemLibrary("wgpu_native");
    exe.linkSystemLibrary("glfw");
    
    exe.setBuildMode(mode);
    exe.install();

    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);
}
