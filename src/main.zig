const std = @import("std");
const Allocator = std.mem.Allocator;


use @cImport({
    @cDefine("GLFW_EXPOSE_NATIVE_WAYLAND", "1");
    @cInclude("GLFW/glfw3.h");
    @cInclude("GLFW/glfw3native.h");
});

const wgpu = @import("wgpu.zig");

fn loadSPIRVSrc(path: []const u8) anyerror![]u32 {
    var file = try std.fs.File.openRead(path);
    var size = (try file.stat()).size;
    // No point in reading it into actual memory if we're just going to upload it to the GPU directly
    var res = try std.os.mmap(null, size, std.os.PROT_READ, std.os.MAP_SHARED, file.handle, 0);

    
    return @bytesToSlice(u32, res);
}

pub fn main() anyerror!void {
    var arena = std.heap.ArenaAllocator.init(std.heap.c_allocator);
    defer arena.deinit();


    if (glfwInit() != 1) unreachable; // Lazy error checking for now

    glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);
    var window = glfwCreateWindow(1600, 900, c"Zong", null, null);
    if(window == null) unreachable;



    var adapter = wgpu.requestAdapter(wgpu.RequestAdapterOptions {
        .power_preference = wgpu.PowerPreference.HighPerformance,
        .backends = 2 | 4 | 8
    });

    var device = adapter.requestDevice(wgpu.Device.Descriptor {
        .extensions = wgpu.Extensions {
            .anisotropic_filtering = false
        },
        .limits = wgpu.Limits {
            .max_bind_groups = 255
        },
    });
    
    var vertShader = device.createShaderModule(try loadSPIRVSrc("triangle.vert.spv"));
    var fragShader = device.createShaderModule(try loadSPIRVSrc("triangle.vert.spv"));

    var bindGroupLayout = device.createBindGroupLayout(wgpu.BindGroupLayout.Descriptor {
        .bindings = null,
        .bindings_length = 0,
    });
    var bindGroup = device.createBindGroup(wgpu.BindGroup.Descriptor {
        .layout = bindGroupLayout.id,
        .bindings = null,
        .bindings_length = 0,
    });
    var bindGroupLayouts = [_]wgpu.BindGroupLayout.ID {bindGroupLayout.id};
    var pipelineLayout = device.createPipelineLayout(wgpu.PipelineLayout.Descriptor {
        .bind_group_layouts = bindGroupLayouts[0..].ptr,
        .bind_group_layouts_length = bindGroupLayouts.len
    });

    var renderPipeline = device.createRenderPipeline(wgpu.RenderPipeline.Descriptor {
        .layout = pipelineLayout.id,
        .vertex_stage = wgpu.ProgrammableStageDescriptor {
            .module = vertShader.id,
            .entry_point = c"main"
        },
        .fragment_stage = &wgpu.ProgrammableStageDescriptor {
            .module = fragShader.id,
            .entry_point = c"main"
        },
        .rasterization_state = &wgpu.RasterizationStateDescriptor {
            .front_face = wgpu.FrontFace.Ccw,
            .cull_mode = wgpu.CullMode.None,
            .depth_bias = 0,
            .depth_bias_slope_scale = 0.0,
            .depth_bias_clamp = 0.0
        },
        .primitive_topology = wgpu.PrimitiveTopology.TriangleList,
        .color_states = &wgpu.ColorStateDescriptor {
            .format = wgpu.TextureFormat.Bgra8Unorm,
            .alpha_blend = wgpu.BlendDescriptor {
                .src_factor = wgpu.BlendFactor.One,
                .dst_factor = wgpu.BlendFactor.Zero,
                .operation = wgpu.BlendOperation.Add
            },
            .color_blend = wgpu.BlendDescriptor {
                .src_factor = wgpu.BlendFactor.One,
                .dst_factor = wgpu.BlendFactor.Zero,
                .operation = wgpu.BlendOperation.Add
            },
            .write_mask = wgpu.ColorWrite.All
        },
        .color_states_length = 1,
        .depth_stencil_state = null,
        .vertex_input = wgpu.VertexInputDescriptor {
            .index_format = wgpu.IndexFormat.Uint16,
            .vertex_buffers = null,
            .vertex_buffers_length = 0
        },
        .sample_count = 1,
        .sample_mask = 0,
        .alpha_to_coverage_enabled = false,
    });
}
