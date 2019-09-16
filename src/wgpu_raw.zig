// This file obtained by `zig translate-c`-ing the wgpu.h, then manually editing/sed-ing away the bloat
// enum-cleanliness obtained by a lot of sweat, tears, and multiline cursors

pub const WGPUAddressMode = extern enum {
    ClampToEdge = 0,
    Repeat = 1,
    MirrorRepeat = 2,
};

pub const WGPUBindingType = extern enum {
    UniformBuffer = 0,
    StorageBuffer = 1,
    ReadonlyStorageBuffer = 2,
    Sampler = 3,
    SampledTexture = 4,
    StorageTexture = 5,
};

pub const WGPUBlendFactor = extern enum {
    Zero = 0,
    One = 1,
    SrcColor = 2,
    OneMinusSrcColor = 3,
    SrcAlpha = 4,
    OneMinusSrcAlpha = 5,
    DstColor = 6,
    OneMinusDstColor = 7,
    DstAlpha = 8,
    OneMinusDstAlpha = 9,
    SrcAlphaSaturated = 10,
    BlendColor = 11,
    OneMinusBlendColor = 12,
};

pub const WGPUBlendOperation = extern enum {
    Add = 0,
    Subtract = 1,
    ReverseSubtract = 2,
    Min = 3,
    Max = 4,
};

pub const WGPUBufferMapAsyncStatus = extern enum {
    Success = 0,
    Error = 1,
    Unknown = 2,
    ContextLost = 3,
};

pub const WGPUCompareFunction = extern enum {
    Never = 0,
    Less = 1,
    Equal = 2,
    LessEqual = 3,
    Greater = 4,
    NotEqual = 5,
    GreaterEqual = 6,
    Always = 7,
};

pub const WGPUCullMode = extern enum {
    None = 0,
    Front = 1,
    Back = 2,
};

pub const WGPUFilterMode = extern enum {
    Nearest = 0,
    Linear = 1,
};

pub const WGPUFrontFace = extern enum {
    Ccw = 0,
    Cw = 1,
};

pub const WGPUIndexFormat = extern enum {
    Uint16 = 0,
    Uint32 = 1,
};
pub const WGPUInputStepMode = extern enum {
    Vertex = 0,
    Instance = 1,
};
pub const WGPULoadOp = extern enum {
    Clear = 0,
    Load = 1,
};

pub const WGPUPowerPreference = extern enum {
    Default = 0,
    LowPower = 1,
    HighPerformance = 2,
};

pub const WGPUPresentMode = extern enum {
    NoVsync = 0,
    Vsync = 1,
};

pub const WGPUPrimitiveTopology = extern enum {
    PointList = 0,
    LineList = 1,
    LineStrip = 2,
    TriangleList = 3,
    TriangleStrip = 4,
};

pub const WGPUStencilOperation = extern enum {
    Keep = 0,
    Zero = 1,
    Replace = 2,
    Invert = 3,
    IncrementClamp = 4,
    DecrementClamp = 5,
    IncrementWrap = 6,
    DecrementWrap = 7,
};

pub const WGPUStoreOp = extern enum {
    Clear = 0,
    Store = 1,
};

pub const WGPUTextureAspect = extern enum {
    All = 0,
    StencilOnly = 1,
    DepthOnly = 2,
};

pub const WGPUTextureDimension = extern enum {
    D1 = 0,
    D2 = 1,
    D3 = 2,
};

pub const WGPUTextureFormat = extern enum {
    R8Unorm = 0,
    R8Snorm = 1,
    R8Uint = 2,
    R8Sint = 3,
    R16Unorm = 4,
    R16Snorm = 5,
    R16Uint = 6,
    R16Sint = 7,
    R16Float = 8,
    Rg8Unorm = 9,
    Rg8Snorm = 10,
    Rg8Uint = 11,
    Rg8Sint = 12,
    R32Uint = 13,
    R32Sint = 14,
    R32Float = 15,
    Rg16Unorm = 16,
    Rg16Snorm = 17,
    Rg16Uint = 18,
    Rg16Sint = 19,
    Rg16Float = 20,
    Rgba8Unorm = 21,
    Rgba8UnormSrgb = 22,
    Rgba8Snorm = 23,
    Rgba8Uint = 24,
    Rgba8Sint = 25,
    Bgra8Unorm = 26,
    Bgra8UnormSrgb = 27,
    Rgb10a2Unorm = 28,
    Rg11b10Float = 29,
    Rg32Uint = 30,
    Rg32Sint = 31,
    Rg32Float = 32,
    Rgba16Unorm = 33,
    Rgba16Snorm = 34,
    Rgba16Uint = 35,
    Rgba16Sint = 36,
    Rgba16Float = 37,
    Rgba32Uint = 38,
    Rgba32Sint = 39,
    Rgba32Float = 40,
    Depth32Float = 41,
    Depth24Plus = 42,
    Depth24PlusStencil8 = 43,
};

pub const WGPUTextureViewDimension = extern enum {
    D1 = 0,
    D2 = 1,
    D2Array = 2,
    Cube = 3,
    CubeArray = 4,
    D3 = 5,
};

pub const WGPUVertexFormat = extern enum {
    Uchar2 = 1,
    Uchar4 = 3,
    Char2 = 5,
    Char4 = 7,
    Uchar2Norm = 9,
    Uchar4Norm = 11,
    Char2Norm = 14,
    Char4Norm = 16,
    Ushort2 = 18,
    Ushort4 = 20,
    Short2 = 22,
    Short4 = 24,
    Ushort2Norm = 26,
    Ushort4Norm = 28,
    Short2Norm = 30,
    Short4Norm = 32,
    Half2 = 34,
    Half4 = 36,
    Float = 37,
    Float2 = 38,
    Float3 = 39,
    Float4 = 40,
    Uint = 41,
    Uint2 = 42,
    Uint3 = 43,
    Uint4 = 44,
    Int = 45,
    Int2 = 46,
    Int3 = 47,
    Int4 = 48,
};
pub const WGPUId_Device_Dummy = u64; // NOTE: Not sure what the dummies are about. Leaving them there for now
pub const WGPUDeviceId = WGPUId_Device_Dummy;
pub const WGPUId_Adapter_Dummy = u64;
pub const WGPUAdapterId = WGPUId_Adapter_Dummy;
pub const WGPUExtensions = extern struct {
    anisotropic_filtering: bool, // TODO: Convert to camelCase
};
pub const WGPULimits = extern struct {
    max_bind_groups: u32,
};
pub const WGPUDeviceDescriptor = extern struct {
    extensions: WGPUExtensions,
    limits: WGPULimits,
};
pub const WGPUId_BindGroup_Dummy = u64;
pub const WGPUBindGroupId = WGPUId_BindGroup_Dummy;
pub const WGPUId_Buffer_Dummy = u64;
pub const WGPUBufferId = WGPUId_Buffer_Dummy;
pub const WGPUBufferAddress = u64;
pub const WGPUBufferMapReadCallback = ?extern fn (WGPUBufferMapAsyncStatus, [*c]const u8, [*c]u8) void;
pub const WGPUBufferMapWriteCallback = ?extern fn (WGPUBufferMapAsyncStatus, [*c]u8, [*c]u8) void;
pub const WGPUId_ComputePass_Dummy = u64;
pub const WGPUComputePassId = WGPUId_ComputePass_Dummy;
pub const WGPUId_CommandBuffer_Dummy = u64;
pub const WGPUCommandBufferId = WGPUId_CommandBuffer_Dummy;
pub const WGPUCommandEncoderId = WGPUCommandBufferId;
pub const WGPUComputePassDescriptor = extern struct {
    todo: u32,
};
pub const WGPUId_RenderPass_Dummy = u64;
pub const WGPURenderPassId = WGPUId_RenderPass_Dummy;
pub const WGPUId_TextureView_Dummy = u64;
pub const WGPUTextureViewId = WGPUId_TextureView_Dummy;
pub const WGPUColor = extern struct {
    r: f64,
    g: f64,
    b: f64,
    a: f64,
};
pub const WGPURenderPassColorAttachmentDescriptor = extern struct {
    attachment: WGPUTextureViewId,
    resolve_target: [*c]const WGPUTextureViewId,
    load_op: WGPULoadOp,
    store_op: WGPUStoreOp,
    clear_color: WGPUColor,
};
pub const WGPURenderPassDepthStencilAttachmentDescriptor_TextureViewId = extern struct {
    attachment: WGPUTextureViewId,
    depth_load_op: WGPULoadOp,
    depth_store_op: WGPUStoreOp,
    clear_depth: f32,
    stencil_load_op: WGPULoadOp,
    stencil_store_op: WGPUStoreOp,
    clear_stencil: u32,
};
pub const WGPURenderPassDescriptor = extern struct {
    color_attachments: [*c]const WGPURenderPassColorAttachmentDescriptor,
    color_attachments_length: usize,
    depth_stencil_attachment: [*c]const WGPURenderPassDepthStencilAttachmentDescriptor_TextureViewId,
};
pub const WGPUBufferCopyView = extern struct {
    buffer: WGPUBufferId,
    offset: WGPUBufferAddress,
    row_pitch: u32,
    image_height: u32,
};
pub const WGPUId_Texture_Dummy = u64;
pub const WGPUTextureId = WGPUId_Texture_Dummy;
pub const WGPUOrigin3d = extern struct {
    x: f32,
    y: f32,
    z: f32,
};
pub const WGPUTextureCopyView = extern struct {
    texture: WGPUTextureId,
    mip_level: u32,
    array_layer: u32,
    origin: WGPUOrigin3d,
};
pub const WGPUExtent3d = extern struct {
    width: u32,
    height: u32,
    depth: u32,
};
pub const WGPUCommandBufferDescriptor = extern struct {
    todo: u32,
};
pub const WGPURawString = [*c]const u8;
pub const WGPUId_ComputePipeline_Dummy = u64;
pub const WGPUComputePipelineId = WGPUId_ComputePipeline_Dummy;
pub const WGPUId_Surface = u64;
pub const WGPUSurfaceId = WGPUId_Surface;
pub const WGPUId_BindGroupLayout_Dummy = u64;
pub const WGPUBindGroupLayoutId = WGPUId_BindGroupLayout_Dummy;
pub const WGPUBufferBinding = extern struct {
    buffer: WGPUBufferId,
    offset: WGPUBufferAddress,
    size: WGPUBufferAddress,
};
pub const WGPUId_Sampler_Dummy = u64;
pub const WGPUSamplerId = WGPUId_Sampler_Dummy;

pub const WGPUBindingResource_Tag = extern enum {
    Buffer = 0,
    Sampler = 1,
    TextureView = 2,
};
pub const WGPUBindingResource_WGPUBuffer_Body = extern struct {
    _0: WGPUBufferBinding,
};
pub const WGPUBindingResource_WGPUSampler_Body = extern struct {
    _0: WGPUSamplerId,
};
pub const WGPUBindingResource_WGPUTextureView_Body = extern struct {
    _0: WGPUTextureViewId,
};
pub const WGPUBindingResource = extern struct {
    tag: WGPUBindingResource_Tag,
    @"": extern union {
        buffer: WGPUBindingResource_WGPUBuffer_Body,
        sampler: WGPUBindingResource_WGPUSampler_Body,
        texture_view: WGPUBindingResource_WGPUTextureView_Body,
    },
};
pub const WGPUBindGroupBinding = extern struct {
    binding: u32,
    resource: WGPUBindingResource,
};
pub const WGPUBindGroupDescriptor = extern struct {
    layout: WGPUBindGroupLayoutId,
    bindings: [*c]const WGPUBindGroupBinding,
    bindings_length: usize,
};
pub const WGPUShaderStage = u32;
pub const WGPUBindGroupLayoutBinding = extern struct {
    binding: u32,
    visibility: WGPUShaderStage,
    ty: WGPUBindingType,
    texture_dimension: WGPUTextureViewDimension,
    multisampled: bool,
    dynamic: bool,
};
pub const WGPUBindGroupLayoutDescriptor = extern struct {
    bindings: [*c]const WGPUBindGroupLayoutBinding,
    bindings_length: usize,
};
pub const WGPUBufferUsage = u32;
pub const WGPUBufferDescriptor = extern struct {
    size: WGPUBufferAddress,
    usage: WGPUBufferUsage,
};
pub const WGPUCommandEncoderDescriptor = extern struct {
    todo: u32,
};
pub const WGPUId_PipelineLayout_Dummy = u64;
pub const WGPUPipelineLayoutId = WGPUId_PipelineLayout_Dummy;
pub const WGPUId_ShaderModule_Dummy = u64;
pub const WGPUShaderModuleId = WGPUId_ShaderModule_Dummy;
pub const WGPUProgrammableStageDescriptor = extern struct {
    module: WGPUShaderModuleId,
    entry_point: WGPURawString,
};
pub const WGPUComputePipelineDescriptor = extern struct {
    layout: WGPUPipelineLayoutId,
    compute_stage: WGPUProgrammableStageDescriptor,
};
pub const WGPUPipelineLayoutDescriptor = extern struct {
    bind_group_layouts: [*c]const WGPUBindGroupLayoutId,
    bind_group_layouts_length: usize,
};
pub const WGPUId_RenderPipeline_Dummy = u64;
pub const WGPURenderPipelineId = WGPUId_RenderPipeline_Dummy;
pub const WGPURasterizationStateDescriptor = extern struct {
    front_face: WGPUFrontFace,
    cull_mode: WGPUCullMode,
    depth_bias: i32,
    depth_bias_slope_scale: f32,
    depth_bias_clamp: f32,
};
pub const WGPUBlendDescriptor = extern struct {
    src_factor: WGPUBlendFactor,
    dst_factor: WGPUBlendFactor,
    operation: WGPUBlendOperation,
};

// NOTE: Translated from the #define statements
pub const WGPUColorWrite = extern enum {
    Red = 1,
    Green = 2,
    Blue = 4,
    Alpha = 8, 
    Color = 7,
    All = 15,
};
pub const WGPUColorStateDescriptor = extern struct {
    format: WGPUTextureFormat,
    alpha_blend: WGPUBlendDescriptor,
    color_blend: WGPUBlendDescriptor,
    write_mask: WGPUColorWrite,
};
pub const WGPUStencilStateFaceDescriptor = extern struct {
    compare: WGPUCompareFunction,
    fail_op: WGPUStencilOperation,
    depth_fail_op: WGPUStencilOperation,
    pass_op: WGPUStencilOperation,
};
pub const WGPUDepthStencilStateDescriptor = extern struct {
    format: WGPUTextureFormat,
    depth_write_enabled: bool,
    depth_compare: WGPUCompareFunction,
    stencil_front: WGPUStencilStateFaceDescriptor,
    stencil_back: WGPUStencilStateFaceDescriptor,
    stencil_read_mask: u32,
    stencil_write_mask: u32,
};
pub const WGPUShaderLocation = u32;
pub const WGPUVertexAttributeDescriptor = extern struct {
    offset: WGPUBufferAddress,
    format: WGPUVertexFormat,
    shader_location: WGPUShaderLocation,
};
pub const WGPUVertexBufferDescriptor = extern struct {
    stride: WGPUBufferAddress,
    step_mode: WGPUInputStepMode,
    attributes: [*c]const WGPUVertexAttributeDescriptor,
    attributes_length: usize,
};
pub const WGPUVertexInputDescriptor = extern struct {
    index_format: WGPUIndexFormat,
    vertex_buffers: [*c]const WGPUVertexBufferDescriptor,
    vertex_buffers_length: usize,
};
pub const WGPURenderPipelineDescriptor = extern struct {
    layout: WGPUPipelineLayoutId,
    vertex_stage: WGPUProgrammableStageDescriptor,
    fragment_stage: [*c]const WGPUProgrammableStageDescriptor,
    primitive_topology: WGPUPrimitiveTopology,
    rasterization_state: [*c]const WGPURasterizationStateDescriptor,
    color_states: [*c]const WGPUColorStateDescriptor,
    color_states_length: usize,
    depth_stencil_state: [*c]const WGPUDepthStencilStateDescriptor,
    vertex_input: WGPUVertexInputDescriptor,
    sample_count: u32,
    sample_mask: u32,
    alpha_to_coverage_enabled: bool,
};
pub const WGPUSamplerDescriptor = extern struct {
    address_mode_u: WGPUAddressMode,
    address_mode_v: WGPUAddressMode,
    address_mode_w: WGPUAddressMode,
    mag_filter: WGPUFilterMode,
    min_filter: WGPUFilterMode,
    mipmap_filter: WGPUFilterMode,
    lod_min_clamp: f32,
    lod_max_clamp: f32,
    compare_function: WGPUCompareFunction,
};
pub const WGPUU32Array = extern struct {
    bytes: [*c]const u32,
    length: usize,
};
pub const WGPUShaderModuleDescriptor = extern struct {
    code: WGPUU32Array,
};
pub const WGPUId_SwapChain_Dummy = u64;
pub const WGPUSwapChainId = WGPUId_SwapChain_Dummy;
pub const WGPUTextureUsage = extern enum {
    Sampled = 4,
    Storage = 8,
    CopySrc = 1,
    None = 0,
    CopyDest = 2,
    OutputAttachment = 16,
    Uninitialized = 65535,
};
pub const WGPUSwapChainDescriptor = extern struct {
    usage: WGPUTextureUsage,
    format: WGPUTextureFormat,
    width: u32,
    height: u32,
    present_mode: WGPUPresentMode,
};
pub const WGPUTextureDescriptor = extern struct {
    size: WGPUExtent3d,
    array_layer_count: u32,
    mip_level_count: u32,
    sample_count: u32,
    dimension: WGPUTextureDimension,
    format: WGPUTextureFormat,
    usage: WGPUTextureUsage,
};
pub const WGPUQueueId = WGPUDeviceId;
pub const WGPUId_RenderBundle_Dummy = u64;
pub const WGPURenderBundleId = WGPUId_RenderBundle_Dummy;
pub const WGPUBackendBit = u32;
pub const WGPURequestAdapterOptions = extern struct {
    power_preference: WGPUPowerPreference,
    backends: WGPUBackendBit,
};
pub const WGPUSwapChainOutput = extern struct {
    view_id: WGPUTextureViewId,
};
pub const WGPUTextureViewDescriptor = extern struct {
    format: WGPUTextureFormat,
    dimension: WGPUTextureViewDimension,
    aspect: WGPUTextureAspect,
    base_mip_level: u32,
    level_count: u32,
    base_array_layer: u32,
    array_layer_count: u32,
};

pub extern fn wgpu_adapter_request_device(adapter_id: WGPUAdapterId, desc: [*c]const WGPUDeviceDescriptor) WGPUDeviceId;
pub extern fn wgpu_bind_group_destroy(bind_group_id: WGPUBindGroupId) void;
pub extern fn wgpu_buffer_destroy(buffer_id: WGPUBufferId) void;
pub extern fn wgpu_buffer_map_read_async(buffer_id: WGPUBufferId, start: WGPUBufferAddress, size: WGPUBufferAddress, callback: WGPUBufferMapReadCallback, userdata: [*c]u8) void;
pub extern fn wgpu_buffer_map_write_async(buffer_id: WGPUBufferId, start: WGPUBufferAddress, size: WGPUBufferAddress, callback: WGPUBufferMapWriteCallback, userdata: [*c]u8) void;
pub extern fn wgpu_buffer_unmap(buffer_id: WGPUBufferId) void;
pub extern fn wgpu_command_encoder_begin_compute_pass(encoder_id: WGPUCommandEncoderId, desc: [*c]const WGPUComputePassDescriptor) WGPUComputePassId;
pub extern fn wgpu_command_encoder_begin_render_pass(encoder_id: WGPUCommandEncoderId, desc: [*c]const WGPURenderPassDescriptor) WGPURenderPassId;
pub extern fn wgpu_command_encoder_copy_buffer_to_buffer(command_encoder_id: WGPUCommandEncoderId, source: WGPUBufferId, source_offset: WGPUBufferAddress, destination: WGPUBufferId, destination_offset: WGPUBufferAddress, size: WGPUBufferAddress) void;
pub extern fn wgpu_command_encoder_copy_buffer_to_texture(command_encoder_id: WGPUCommandEncoderId, source: [*c]const WGPUBufferCopyView, destination: [*c]const WGPUTextureCopyView, copy_size: WGPUExtent3d) void;
pub extern fn wgpu_command_encoder_copy_texture_to_buffer(command_encoder_id: WGPUCommandEncoderId, source: [*c]const WGPUTextureCopyView, destination: [*c]const WGPUBufferCopyView, copy_size: WGPUExtent3d) void;
pub extern fn wgpu_command_encoder_copy_texture_to_texture(command_encoder_id: WGPUCommandEncoderId, source: [*c]const WGPUTextureCopyView, destination: [*c]const WGPUTextureCopyView, copy_size: WGPUExtent3d) void;
pub extern fn wgpu_command_encoder_finish(encoder_id: WGPUCommandEncoderId, desc: [*c]const WGPUCommandBufferDescriptor) WGPUCommandBufferId;
pub extern fn wgpu_compute_pass_dispatch(pass_id: WGPUComputePassId, x: u32, y: u32, z: u32) void;
pub extern fn wgpu_compute_pass_dispatch_indirect(pass_id: WGPUComputePassId, indirect_buffer_id: WGPUBufferId, indirect_offset: WGPUBufferAddress) void;
pub extern fn wgpu_compute_pass_end_pass(pass_id: WGPUComputePassId) void;
pub extern fn wgpu_compute_pass_insert_debug_marker(_pass_id: WGPUComputePassId, _label: WGPURawString) void;
pub extern fn wgpu_compute_pass_pop_debug_group(_pass_id: WGPUComputePassId) void;
pub extern fn wgpu_compute_pass_push_debug_group(_pass_id: WGPUComputePassId, _label: WGPURawString) void;
pub extern fn wgpu_compute_pass_set_bind_group(pass_id: WGPUComputePassId, index: u32, bind_group_id: WGPUBindGroupId, offsets: [*c]const WGPUBufferAddress, offsets_length: usize) void;
pub extern fn wgpu_compute_pass_set_pipeline(pass_id: WGPUComputePassId, pipeline_id: WGPUComputePipelineId) void;
pub extern fn wgpu_create_surface_from_metal_layer(layer: ?*c_void) WGPUSurfaceId;
pub extern fn wgpu_create_surface_from_windows_hwnd(_hinstance: ?*c_void, hwnd: ?*c_void) WGPUSurfaceId;
pub extern fn wgpu_create_surface_from_xlib(display: [*c](?*const c_void), window: u64) WGPUSurfaceId;
pub extern fn wgpu_device_create_bind_group(device_id: WGPUDeviceId, desc: [*c]const WGPUBindGroupDescriptor) WGPUBindGroupId;
pub extern fn wgpu_device_create_bind_group_layout(device_id: WGPUDeviceId, desc: [*c]const WGPUBindGroupLayoutDescriptor) WGPUBindGroupLayoutId;
pub extern fn wgpu_device_create_buffer(device_id: WGPUDeviceId, desc: [*c]const WGPUBufferDescriptor) WGPUBufferId;
pub extern fn wgpu_device_create_buffer_mapped(device_id: WGPUDeviceId, desc: [*c]const WGPUBufferDescriptor, mapped_ptr_out: [*c]([*c]u8)) WGPUBufferId;
pub extern fn wgpu_device_create_command_encoder(device_id: WGPUDeviceId, desc: [*c]const WGPUCommandEncoderDescriptor) WGPUCommandEncoderId;
pub extern fn wgpu_device_create_compute_pipeline(device_id: WGPUDeviceId, desc: [*c]const WGPUComputePipelineDescriptor) WGPUComputePipelineId;
pub extern fn wgpu_device_create_pipeline_layout(device_id: WGPUDeviceId, desc: [*c]const WGPUPipelineLayoutDescriptor) WGPUPipelineLayoutId;
pub extern fn wgpu_device_create_render_pipeline(device_id: WGPUDeviceId, desc: [*c]const WGPURenderPipelineDescriptor) WGPURenderPipelineId;
pub extern fn wgpu_device_create_sampler(device_id: WGPUDeviceId, desc: [*c]const WGPUSamplerDescriptor) WGPUSamplerId;
pub extern fn wgpu_device_create_shader_module(device_id: WGPUDeviceId, desc: [*c]const WGPUShaderModuleDescriptor) WGPUShaderModuleId;
pub extern fn wgpu_device_create_swap_chain(device_id: WGPUDeviceId, surface_id: WGPUSurfaceId, desc: [*c]const WGPUSwapChainDescriptor) WGPUSwapChainId;
pub extern fn wgpu_device_create_texture(device_id: WGPUDeviceId, desc: [*c]const WGPUTextureDescriptor) WGPUTextureId;
pub extern fn wgpu_device_destroy(device_id: WGPUDeviceId) void;
pub extern fn wgpu_device_get_limits(_device_id: WGPUDeviceId, limits: [*c]WGPULimits) void;
pub extern fn wgpu_device_get_queue(device_id: WGPUDeviceId) WGPUQueueId;
pub extern fn wgpu_device_poll(device_id: WGPUDeviceId, force_wait: bool) void;
pub extern fn wgpu_queue_submit(queue_id: WGPUQueueId, command_buffers: [*c]const WGPUCommandBufferId, command_buffers_length: usize) void;
pub extern fn wgpu_render_pass_draw(pass_id: WGPURenderPassId, vertex_count: u32, instance_count: u32, first_vertex: u32, first_instance: u32) void;
pub extern fn wgpu_render_pass_draw_indexed(pass_id: WGPURenderPassId, index_count: u32, instance_count: u32, first_index: u32, base_vertex: i32, first_instance: u32) void;
pub extern fn wgpu_render_pass_draw_indexed_indirect(pass_id: WGPURenderPassId, indirect_buffer_id: WGPUBufferId, indirect_offset: WGPUBufferAddress) void;
pub extern fn wgpu_render_pass_draw_indirect(pass_id: WGPURenderPassId, indirect_buffer_id: WGPUBufferId, indirect_offset: WGPUBufferAddress) void;
pub extern fn wgpu_render_pass_end_pass(pass_id: WGPURenderPassId) void;
pub extern fn wgpu_render_pass_execute_bundles(_pass_id: WGPURenderPassId, _bundles: [*c]const WGPURenderBundleId, _bundles_length: usize) void;
pub extern fn wgpu_render_pass_insert_debug_marker(_pass_id: WGPURenderPassId, _label: WGPURawString) void;
pub extern fn wgpu_render_pass_pop_debug_group(_pass_id: WGPURenderPassId) void;
pub extern fn wgpu_render_pass_push_debug_group(_pass_id: WGPURenderPassId, _label: WGPURawString) void;
pub extern fn wgpu_render_pass_set_bind_group(pass_id: WGPURenderPassId, index: u32, bind_group_id: WGPUBindGroupId, offsets: [*c]const WGPUBufferAddress, offsets_length: usize) void;
pub extern fn wgpu_render_pass_set_blend_color(pass_id: WGPURenderPassId, color: [*c]const WGPUColor) void;
pub extern fn wgpu_render_pass_set_index_buffer(pass_id: WGPURenderPassId, buffer_id: WGPUBufferId, offset: WGPUBufferAddress) void;
pub extern fn wgpu_render_pass_set_pipeline(pass_id: WGPURenderPassId, pipeline_id: WGPURenderPipelineId) void;
pub extern fn wgpu_render_pass_set_scissor_rect(pass_id: WGPURenderPassId, x: u32, y: u32, w: u32, h: u32) void;
pub extern fn wgpu_render_pass_set_stencil_reference(pass_id: WGPURenderPassId, value: u32) void;
pub extern fn wgpu_render_pass_set_vertex_buffers(pass_id: WGPURenderPassId, start_slot: u32, buffers: [*c]const WGPUBufferId, offsets: [*c]const WGPUBufferAddress, length: usize) void;
pub extern fn wgpu_render_pass_set_viewport(pass_id: WGPURenderPassId, x: f32, y: f32, w: f32, h: f32, min_depth: f32, max_depth: f32) void;
pub extern fn wgpu_request_adapter(desc: [*c]const WGPURequestAdapterOptions) WGPUAdapterId;
pub extern fn wgpu_swap_chain_get_next_texture(swap_chain_id: WGPUSwapChainId) WGPUSwapChainOutput;
pub extern fn wgpu_swap_chain_present(swap_chain_id: WGPUSwapChainId) void;
pub extern fn wgpu_texture_create_view(texture_id: WGPUTextureId, desc: [*c]const WGPUTextureViewDescriptor) WGPUTextureViewId;
pub extern fn wgpu_texture_destroy(texture_id: WGPUTextureId) void;
pub extern fn wgpu_texture_view_destroy(texture_view_id: WGPUTextureViewId) void;