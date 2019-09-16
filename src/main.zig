const std = @import("std");
const assert = std.debug.assert;
const Allocator = std.mem.Allocator;


use @cImport({
    @cDefine("GLFW_EXPOSE_NATIVE_X11", "1");
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

const Size = struct {
    width: c_int,
    height: c_int,
    fn from(window: ?*GLFWwindow) @This() {
        var size: Size = undefined;
        glfwGetWindowSize(window, &size.width, &size.height);
        return size;
    }

    fn eq(self: @This(), other: @This()) bool {
        return (self.width == other.width) and (self.height == other.height);
    }
};

pub fn main() anyerror!void {
    var arena = std.heap.ArenaAllocator.init(std.heap.c_allocator);
    defer arena.deinit();


    assert(glfwInit() == 1);
    defer glfwTerminate();

    glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);
    var window = glfwCreateWindow(1600, 900, c"Zong", null, null);
    assert(window != null);
    defer glfwDestroyWindow(window);



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

    var xlibDisplay = glfwGetX11Display();
    var xlibWindow = glfwGetX11Window(window);
    var surface = wgpu.Surface.fromXlib(@ptrCast(*?*c_void, &xlibDisplay), xlibWindow);

    

    var size = Size{.width = -1, .height = -1};

    var swapChain: wgpu.SwapChain = undefined;

    while (glfwWindowShouldClose(window) != 1) {
        var curSize = Size.from(window) ;
        if (!size.eq(curSize)) {
            size = curSize;
            swapChain = device.createSwapChain(surface, wgpu.SwapChain.Descriptor {
                .usage = wgpu.TextureUsage.OutputAttachment,
                .format = wgpu.TextureFormat.Bgra8Unorm,
                .width = @intCast(u32, size.width),
                .height = @intCast(u32, size.height),
                .present_mode = wgpu.PresentMode.Vsync
            });
        }

        var nextTexture = swapChain.nextTexture();
        var encoder = device.createCommandEncoder();
        var colorAttachments = [1]wgpu.RenderPassColorAttachmentDescriptor {
            wgpu.RenderPassColorAttachmentDescriptor{
                .attachment = nextTexture.view_id,
                .load_op = wgpu.LoadOp.Clear,
                .store_op = wgpu.StoreOp.Store,
                .clear_color = wgpu.Color {.r = 46.0 / 255.0, .g = 52.0 / 255.0, .b = 64.0 / 255.0, .a = 1.0}, // TODO: Make WGPUColorWrite a proper enum
                .resolve_target = null
            }
        };
    
        var renderPass = encoder.beginRenderPass(wgpu.RenderPass.Descriptor {
            .color_attachments = &colorAttachments,
            .color_attachments_length = colorAttachments.len,
            .depth_stencil_attachment = null
        });

        renderPass.setPipeline(renderPipeline);
        renderPass.setBindGroup(0, bindGroup, [0]u64{});
        renderPass.draw(3, 1, 0, 0);

        var queue = device.getQueue();
        renderPass.end();

        var cmdBuff = encoder.finish();
        queue.submit(([_]wgpu.CommandBuffer.ID{cmdBuff.id})[0..]);
        
        swapChain.present();

        glfwPollEvents();
    }


}
