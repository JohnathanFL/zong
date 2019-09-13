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

//=============================================================================
// Misc. Descriptors (that don't have a struct to call home)
//=============================================================================
pub const ProgrammableStageDescriptor = raw.WGPUProgrammableStageDescriptor;
pub const RasterizationStateDescriptor = raw.WGPURasterizationStateDescriptor;
pub const ColorStateDescriptor = raw.WGPUColorStateDescriptor;
pub const BlendDescriptor = raw.WGPUBlendDescriptor;
pub const VertexInputDescriptor = raw.WGPUVertexInputDescriptor;

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
    id: raw.WGPUShaderModuleId,
};

