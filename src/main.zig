const std = @import("std");
const Allocator = std.mem.Allocator;


use @cImport({
    @cDefine("GLFW_EXPOSE_NATIVE_WAYLAND", "1");
    @cInclude("GLFW/glfw3.h");
    @cInclude("GLFW/glfw3native.h");
});

use @import("wgpu.zig");

fn loadSPIRVSrc(alloc: *Allocator, path: []const u8) !WGPUU32Array {
    var contents = try std.io.readFileAllocAligned(alloc, "triangle.vert.spv", 4);
    return WGPUU32Array {
        .bytes = @ptrCast(*u32, contents.ptr),
        .length = contents.len
    };
}

pub fn main() anyerror!void {
    var arena = std.heap.ArenaAllocator.init(std.heap.c_allocator);
    defer arena.deinit();


    if (glfwInit() != 1) unreachable; // Lazy error checking for now

    glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);
    var window = glfwCreateWindow(1600, 900, c"Zong", null, null);
    if(window == null) unreachable;

    var adapter = wgpu_request_adapter(&WGPURequestAdapterOptions {
        .power_preference = WGPUPowerPreference.WGPUPowerPreference_LowPower,
        .backends = 2 | 4 | 8
    });

    var device = wgpu_adapter_request_device(adapter, &WGPUDeviceDescriptor {
        .extensions = WGPUExtensions {
            .anisotropic_filtering = false
        },
        .limits = WGPULimits {
            .max_bind_groups = 255
        },
    });

    var vertShader = wgpu_device_create_shader_module(device, &WGPUShaderModuleDescriptor {
        .code = try loadSPIRVSrc(&arena.allocator, "triangle.vert.spv")
    });

    var fragShader = wgpu_device_create_shader_module(device, &WGPUShaderModuleDescriptor {
        .code = try loadSPIRVSrc(&arena.allocator, "triangle.frag.spv")
    });

    var bindGroupLayout = wgpu_device_create_bind_group_layout(device, &WGPUBindGroupLayoutDescriptor {
        .bindings = null,
        .bindings_length = 0,
    });
    var bindGroup = wgpu_device_create_bind_group(device, &WGPUBindGroupDescriptor {
        .layout = bindGroupLayout,
        .bindings = null,
        .bindings_length = 0,
    });
    var bindGroupLayouts = [_]WGPUBindGroupLayoutId {bindGroupLayout};
    var pipelineLayout = wgpu_device_create_pipeline_layout(device, &WGPUPipelineLayoutDescriptor {
        .bind_group_layouts = bindGroupLayouts[0..].ptr,
        .bind_group_layouts_length = bindGroupLayouts.len
    });

    var renderPipeline = wgpu_device_create_render_pipeline(device, &WGPURenderPipelineDescriptor {
        .layout = pipelineLayout,
        .vertex_stage = &WGPUProgrammableStageDescriptor {
            .module = vertShader,
            .entry_point = c"main"
        },
        .fragment_stage = &WGPUProgrammableStageDescriptor {
            .module = fragShader,
            .entry_point = c"main"
        },
        .rasterization_state = &WGPURasterizationStateDescriptor {
            .front_face = WGPUFrontFace_Ccw,
            .cull_mode = WGPUCullMode_None,
            .depth_bias = 0,
            .depth_bias_slope_scale = 0.0,
            .depth_bias_clamp = 0.0
        },
        .primitive_topology = WGPUPrimitiveTopology_TriangleList,
        .color_states = &WGPUColorStateDescriptor {
            .format = WGPUTextureFormat_Bgra8Unorn,
            .alpha_blend = WGPUBlendDescriptor {
                .src_factor = WGPUBlendFactor_One,
                .dst_factor = WGPUBlendFactor_Zero,
                .operation = WGPUBlendOperation_Add
            },
            .color_blend = WGPUBlendDescriptor {
                .src_factor = WGPUBlendFactor_One,
                .dst_factor = WGPUBlendFactor_Zero,
                .operation = WGPUBlendOperation_Add
            },
            .write_mask = WGPUColorWrite_All
        },
        .color_states_length = 1,
        .depth_stencil_state = null,
        .vertex_input = WGPUVertexInputDescriptor {
            .index_format = WGPUIndexFormat_Uint16,
            .vertex_buffers = null,
            .vertex_buffers_length = 0
        },
        .sample_count = 1
    });


    
}
