const raw = @import("wgpu_raw.zig");

// Here's how this'll work.
// We'll have a whole bunch of POD types we just directly re-export (like the directly below)
// Then we'll take anything that is taken as the first arg of a function and wrap it in
// a struct for .method style calls.


//=====================================================================================================================
// DIRECT RE-EXPORTS
//=====================================================================================================================


//=============================================================================
// Normal structs
//=============================================================================
pub const RequestAdapterOptions = raw.WGPURequestAdapterOptions;
pub const PowerPreference = raw.WGPUPowerPreference;
pub const Extensions = raw.WGPUExtensions;
pub const Limits = raw.WGPULimits;
pub const FrontFace = raw.WGPUFrontFace;
pub const CullMode = raw.WGPUCullMode;
pub const PrimitiveTopology = raw.WGPUPrimitiveTopology;
pub const TextureFormat = raw.WGPUTextureFormat;
pub const BlendFactor = raw.WGPUBlendFactor;
pub const BlendOperation = raw.WGPUBlendOperation;
pub const ColorWrite = raw.WGPUColorWrite;
pub const IndexFormat = raw.WGPUIndexFormat;
pub const TextureUsage = raw.WGPUTextureUsage;
pub const PresentMode = raw.WGPUPresentMode;
pub const SwapChainOutput = raw.WGPUSwapChainOutput;
pub const LoadOp = raw.WGPULoadOp;
pub const StoreOp = raw.WGPUStoreOp;
pub const Color = raw.WGPUColor;

//=============================================================================
// Misc. Descriptors (that don't have a struct to call home)
//=============================================================================
pub const ProgrammableStageDescriptor = raw.WGPUProgrammableStageDescriptor;
pub const RasterizationStateDescriptor = raw.WGPURasterizationStateDescriptor;
pub const ColorStateDescriptor = raw.WGPUColorStateDescriptor;
pub const BlendDescriptor = raw.WGPUBlendDescriptor;
pub const VertexInputDescriptor = raw.WGPUVertexInputDescriptor;
// Whew that's a mouthful
pub const RenderPassColorAttachmentDescriptor = raw.WGPURenderPassColorAttachmentDescriptor;


pub fn requestAdapter(options: RequestAdapterOptions) Adapter {
    return Adapter {
        .id = raw.wgpu_request_adapter(&options)
    };
}

pub const Adapter = packed struct {
    pub const ID = raw.WGPUAdapterId;
    pub id: ID,


    pub fn requestDevice(self: Adapter, descriptor: Device.Descriptor) Device {
        return Device { .id = raw.wgpu_adapter_request_device(self.id, &descriptor) };
    }
};

pub const Device = packed struct {
    // TODO: Replace all top level descriptors with this?
    // It's 1 char longer to type but could be much cleaner
    pub const Descriptor = raw.WGPUDeviceDescriptor;
    pub const ID = raw.WGPUDeviceId;

    pub id: ID,


    // TODO: We'll have to refactor this if the descriptor ever needs more than code
    pub fn createShaderModule(self: Device, code: []const u32) ShaderModule {
        const ptr = @ptrCast([*]const u32, code.ptr);
        return ShaderModule { 
            .id = raw.wgpu_device_create_shader_module(self.id, &raw.WGPUShaderModuleDescriptor { 
                .code = raw.WGPUU32Array {
                    .bytes = ptr, 
                    .length = code.len
                }
            })
        };
    }

    pub fn createBindGroupLayout(self: Device, layoutDescriptor: BindGroupLayout.Descriptor) BindGroupLayout {
        return BindGroupLayout { .id = raw.wgpu_device_create_bind_group_layout(self.id, &layoutDescriptor) };
    }

    pub fn createBindGroup(self: Device, descriptor: BindGroup.Descriptor) BindGroup {
        return BindGroup { .id = raw.wgpu_device_create_bind_group(self.id, &descriptor) };
    }

    pub fn createPipelineLayout(self: Device, descriptor: PipelineLayout.Descriptor) PipelineLayout {
        return PipelineLayout { .id = raw.wgpu_device_create_pipeline_layout(self.id, &descriptor) };
    }

    pub fn createRenderPipeline(self: Device, descriptor: RenderPipeline.Descriptor) RenderPipeline {
        return RenderPipeline { .id = raw.wgpu_device_create_render_pipeline(self.id, &descriptor) };
    }

    pub fn createSwapChain(self: Device, surface: Surface, descriptor: SwapChain.Descriptor) SwapChain {
        return SwapChain { .id = raw.wgpu_device_create_swap_chain(self.id, surface.id, &descriptor) };
    }

    // For now we take no descriptor, since that's still a todo field.
    pub fn createCommandEncoder(self: Device) CommandEncoder {
        return CommandEncoder { .id = raw.wgpu_device_create_command_encoder(self.id, &CommandEncoder.Descriptor {.todo = 0}) };
    }

    pub fn getQueue(self: Device) Queue {
        return Queue { .id = raw.wgpu_device_get_queue(self.id) };
    }
    
};

pub const CommandEncoder = packed struct {
    pub const Descriptor = raw.WGPUCommandEncoderDescriptor;
    pub const ID = raw.WGPUCommandEncoderId;
    pub id: ID,

    pub fn beginRenderPass(self: CommandEncoder, descriptor: RenderPass.Descriptor) RenderPass {
        return RenderPass { .id = raw.wgpu_command_encoder_begin_render_pass(self.id, &descriptor) };
    }

    // NOTE: Technically takes a descriptor. That is a TODO struct, however.
    pub fn finish(self: CommandEncoder) CommandBuffer {
        return CommandBuffer { .id = raw.wgpu_command_encoder_finish(self.id, null) };
    }

};

pub const RenderPass = packed struct {
    pub const Descriptor = raw.WGPURenderPassDescriptor;
    pub const ID = raw.WGPURenderPassId;
    
    pub id: ID,

    pub fn setPipeline(self: RenderPass, pipeline: RenderPipeline) void {
        raw.wgpu_render_pass_set_pipeline(self.id, pipeline.id);
    }

    pub fn setBindGroup(self: RenderPass, index: u32, bindGroup: BindGroup, offsets: []raw.WGPUBufferAddress) void {
        raw.wgpu_render_pass_set_bind_group(self.id, index, bindGroup.id, offsets.ptr, offsets.len);
    }

    // Be real nice to have range primitives in zig...
    pub fn draw(self: RenderPass, vertCount: u32, instCount: u32, firstVert: u32, firstInst: u32) void {
        raw.wgpu_render_pass_draw(self.id, vertCount, instCount, firstVert, firstInst);
    }

    pub fn end(self: RenderPass) void {
        raw.wgpu_render_pass_end_pass(self.id);
    }
};

pub const BindGroupLayout = packed struct {
    pub const Descriptor = raw.WGPUBindGroupLayoutDescriptor;
    pub const ID = raw.WGPUBindGroupLayoutId;

    pub id: ID,
};

pub const BindGroup = packed struct {
    pub const Descriptor = raw.WGPUBindGroupDescriptor;
    pub const ID = raw.WGPUBindGroupId;

    pub id: ID,
};

pub const PipelineLayout = packed struct {
    pub const Descriptor = raw.WGPUPipelineLayoutDescriptor;
    pub const ID = raw.WGPUPipelineLayoutId;

    pub id: ID,
};

pub const RenderPipeline = packed struct {
    pub const Descriptor = raw.WGPURenderPipelineDescriptor;
    pub const ID = raw.WGPURenderPipelineId;

    pub id: ID,
};

pub const ShaderModule = packed struct {
    pub const ID = raw.WGPUShaderModuleId;
    pub id: ID,
};

pub const Surface = packed struct {
    pub const ID = raw.WGPUSurfaceId;
    pub id: ID,

    pub fn fromXlib(display: [*c](?*const c_void), window: u64) Surface {
        return Surface { .id = raw.wgpu_create_surface_from_xlib(display, window) };
    }
};

pub const SwapChain = packed struct {
    pub const Descriptor = raw.WGPUSwapChainDescriptor;

    pub const ID = raw.WGPUSwapChainId;
    pub id: ID,

    pub fn nextTexture(self: SwapChain) SwapChainOutput {
        return raw.wgpu_swap_chain_get_next_texture(self.id);
    }

    pub fn present(self: SwapChain) void {
        raw.wgpu_swap_chain_present(self.id);
    }
};

pub const Queue = packed struct {
    pub const ID = raw.WGPUQueueId;
    pub id: ID,

    pub fn submit(self: Queue, cmdBuffs: []CommandBuffer.ID) void {
        raw.wgpu_queue_submit(self.id, cmdBuffs.ptr, cmdBuffs.len);
    }
};

pub const CommandBuffer = packed struct {
    pub const Descriptor = raw.WGPUCommandBufferDescriptor;

    pub const ID = raw.WGPUCommandBufferId;
    pub id: ID,
};