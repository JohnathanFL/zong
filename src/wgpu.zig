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
    maxBindGroups: u32,
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
pub const WGPUColorWrite = u32;
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
pub const WGPUTextureUsage = u32;
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
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = 1;
pub const _STDC_PREDEF_H = 1;
pub const __GNUC_VA_LIST = 1;
pub const __FLT16_MAX_EXP__ = 15;
pub const WGPUBufferUsage_STORAGE = 128;
pub const __BIGGEST_ALIGNMENT__ = 16;
pub const EXIT_SUCCESS = 0;
pub const __INT64_FMTd__ = c"ld";
pub const __STDC_VERSION__ = c_long(201112);
pub const __SIZEOF_FLOAT__ = 4;
pub const INT_FAST64_MAX = if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Pointer) @ptrCast(__INT64_C, 9223372036854775807) else if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Int) @intToPtr(__INT64_C, 9223372036854775807) else __INT64_C(9223372036854775807);
pub const __INT_LEAST32_FMTi__ = c"i";
pub const __INT_LEAST8_FMTi__ = c"hhi";
pub const __LDBL_EPSILON__ = 0.000000;
pub const __LZCNT__ = 1;
pub const __INT_LEAST32_FMTd__ = c"d";
pub const __STDC_UTF_32__ = 1;
pub const __SIG_ATOMIC_WIDTH__ = 32;
pub const __FD_ZERO_STOS = c"stosq";
pub const __UINT_FAST64_FMTX__ = c"lX";
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __clang_version__ = c"8.0.1 (tags/RELEASE_801/final)";
pub const __UINT_LEAST8_FMTo__ = c"hho";
pub const __SIZEOF_DOUBLE__ = 8;
pub const __INTMAX_FMTd__ = c"ld";
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const WGPUShaderStage_COMPUTE = 4;
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = 2;
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const __INT_LEAST16_FMTi__ = c"hi";
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = 2;
pub const UINTMAX_MAX = if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Pointer) @ptrCast(__UINT64_C, 18446744073709551615) else if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Int) @intToPtr(__UINT64_C, 18446744073709551615) else __UINT64_C(18446744073709551615);
pub const _STDLIB_H = 1;
pub const __FMA__ = 1;
pub const INT_LEAST64_MAX = if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Pointer) @ptrCast(__INT64_C, 9223372036854775807) else if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Int) @intToPtr(__INT64_C, 9223372036854775807) else __INT64_C(9223372036854775807);
pub const WINT_MIN = c_uint(0);
pub const __MMX__ = 1;
pub const __HAVE_FLOAT64 = 1;
pub const WGPUBufferUsage_COPY_SRC = 4;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = 1;
pub const WGPUTextureUsage_SAMPLED = 4;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const INTPTR_MAX = c_long(9223372036854775807);
pub const __SIZE_FMTX__ = c"lX";
pub const __ID_T_TYPE = __U32_TYPE;
pub const _THREAD_SHARED_TYPES_H = 1;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const _BITS_TYPES_H = 1;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __ptr_t = [*c]void;
pub const __WCHAR_WIDTH__ = 32;
pub const __STDC_IEC_559_COMPLEX__ = 1;
pub const __USE_MISC = 1;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __SIZEOF_PTHREAD_ATTR_T = 56;
pub const __PTRDIFF_FMTd__ = c"ld";
pub const __DBL_MIN_EXP__ = -1021;
pub const __HAVE_FLOAT32X = 1;
pub const __lldiv_t_defined = 1;
pub const __FLT_EVAL_METHOD__ = 0;
pub const __SSE_MATH__ = 1;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const WGPUTextureUsage_STORAGE = 8;
pub const __UINT_FAST8_FMTo__ = c"hho";
pub const __UINT_LEAST64_MAX__ = c_ulong(18446744073709551615);
pub const _ALLOCA_H = 1;
pub const __UINT_LEAST64_FMTx__ = c"lx";
pub const __INT8_MAX__ = 127;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __DBL_HAS_DENORM__ = 1;
pub const __FLOAT128__ = 1;
pub const __HAVE_GENERIC_SELECTION = 1;
pub const __FLT16_HAS_QUIET_NAN__ = 1;
pub const __ATOMIC_RELAXED = 0;
pub const __DBL_DECIMAL_DIG__ = 17;
pub const __SIZEOF_SHORT__ = 2;
pub const __UINT16_FMTX__ = c"hX";
pub const __UINT_FAST16_MAX__ = 65535;
pub const __PTHREAD_MUTEX_HAVE_PREV = 1;
pub const __timeval_defined = 1;
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = 2;
pub const __SSSE3__ = 1;
pub const __CONSTANT_CFSTRINGS__ = 1;
pub const WEXITED = 4;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const _SYS_CDEFS_H = 1;
pub const _ATFILE_SOURCE = 1;
pub const PTRDIFF_MAX = c_long(9223372036854775807);
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __WINT_MAX__ = c_uint(4294967295);
pub const __LDBL_MAX_EXP__ = 16384;
pub const __USE_POSIX199309 = 1;
pub const __STDC_ISO_10646__ = c_long(201706);
pub const __NO_MATH_INLINES = 1;
pub const __WCHAR_TYPE__ = int;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __LONG_MAX__ = c_long(9223372036854775807);
pub const __STDC_HOSTED__ = 1;
pub const __pic__ = 2;
pub const __WCHAR_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-__WCHAR_MAX, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-__WCHAR_MAX, -1) else (-__WCHAR_MAX)(-1);
pub const __PTRDIFF_WIDTH__ = 64;
pub const __INT_FAST16_FMTi__ = c"hi";
pub const __INT_LEAST32_TYPE__ = int;
pub const __SCHAR_MAX__ = 127;
pub const __USE_POSIX2 = 1;
pub const __LDBL_DENORM_MIN__ = 0.000000;
pub const __HAVE_FLOATN_NOT_TYPEDEF = 0;
pub const __FLT16_MIN_EXP__ = -14;
pub const __TIMESIZE = __WORDSIZE;
pub const RAND_MAX = 2147483647;
pub const __USE_XOPEN2K = 1;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub const __PRFCHW__ = 1;
pub const __USE_FORTIFY_LEVEL = 0;
pub const __ELF__ = 1;
pub const __INT64_C_SUFFIX__ = L;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __LDBL_MANT_DIG__ = 64;
pub const __PTHREAD_MUTEX_LOCK_ELISION = 1;
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __USE_XOPEN2K8 = 1;
pub const __CLANG_ATOMIC_INT_LOCK_FREE = 2;
pub const __SIZEOF_PTRDIFF_T__ = 8;
pub const INT16_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-32767, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-32767, -1) else (-32767)(-1);
pub const __bdver2 = 1;
pub const __FMA4__ = 1;
pub const __SIG_ATOMIC_MAX__ = 2147483647;
pub const __USE_ATFILE = 1;
pub const __UINT64_FMTX__ = c"lX";
pub const __WALL = 1073741824;
pub const __UINT64_MAX__ = c_ulong(18446744073709551615);
pub const __DBL_MANT_DIG__ = 53;
pub const __FLT_DECIMAL_DIG__ = 9;
pub const __INT_LEAST32_MAX__ = 2147483647;
pub const __DBL_DIG__ = 15;
pub const __GLIBC_USE_DEPRECATED_SCANF = 0;
pub const __ATOMIC_ACQUIRE = 2;
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = 1;
pub const __USE_ISOC95 = 1;
pub const __FLT16_HAS_DENORM__ = 1;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __UINT_FAST16_FMTu__ = c"hu";
pub const __INTPTR_FMTi__ = c"li";
pub const _BITS_WCHAR_H = 1;
pub const __UINT_FAST8_FMTX__ = c"hhX";
pub const __LITTLE_ENDIAN__ = 1;
pub const __SSE__ = 1;
pub const __FLT_HAS_QUIET_NAN__ = 1;
pub const __SIZEOF_SIZE_T__ = 8;
pub const __UINT_LEAST16_FMTo__ = c"ho";
pub const __UINT8_FMTo__ = c"hho";
pub const UINT_LEAST64_MAX = if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Pointer) @ptrCast(__UINT64_C, 18446744073709551615) else if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Int) @intToPtr(__UINT64_C, 18446744073709551615) else __UINT64_C(18446744073709551615);
pub const __HAVE_FLOAT32 = 1;
pub const __UINT_LEAST16_FMTx__ = c"hx";
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __UINT_FAST16_FMTX__ = c"hX";
pub const __VERSION__ = c"4.2.1 Compatible Clang 8.0.1 (tags/RELEASE_801/final)";
pub const __UINT_FAST32_FMTx__ = c"x";
pub const __UINTPTR_MAX__ = c_ulong(18446744073709551615);
pub const __UINT_FAST8_FMTu__ = c"hhu";
pub const UINT16_MAX = 65535;
pub const __UINT_LEAST8_FMTu__ = c"hhu";
pub const __UINT_LEAST64_FMTo__ = c"lo";
pub const __clockid_t_defined = 1;
pub const __UINT_LEAST8_MAX__ = 255;
pub const UINT8_MAX = 255;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const WGPUBufferUsage_COPY_DST = 8;
pub const __warnattr = msg;
pub const __STD_TYPE = typedef;
pub const __bool_true_false_are_defined = 1;
pub const __SIZEOF_WCHAR_T__ = 4;
pub const WGPUTextureUsage_COPY_SRC = 1;
pub const __GLIBC_USE_DEPRECATED_GETS = 0;
pub const __LDBL_MAX__ = inf;
pub const __UINT16_MAX__ = 65535;
pub const _LP64 = 1;
pub const WGPUBufferUsage_NONE = 0;
pub const FD_SETSIZE = __FD_SETSIZE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __x86_64 = 1;
pub const __PTHREAD_RWLOCK_INT_FLAGS_SHARED = 1;
pub const linux = 1;
pub const __code_model_small_ = 1;
pub const __SIZEOF_WINT_T__ = 4;
pub const WGPUTextureUsage_NONE = 0;
pub const __UINTMAX_FMTo__ = c"lo";
pub const __FLT_DIG__ = 6;
pub const __UINT_LEAST8_FMTX__ = c"hhX";
pub const __INT16_MAX__ = 32767;
pub const __HAVE_FLOAT64X = 1;
pub const __WINT_UNSIGNED__ = 1;
pub const __HAVE_FLOAT16 = 0;
pub const __FLT_MAX_10_EXP__ = 38;
pub const _FEATURES_H = 1;
pub const __UINTPTR_FMTX__ = c"lX";
pub const __UINT_LEAST16_FMTu__ = c"hu";
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = 2;
pub const SIG_ATOMIC_MAX = 2147483647;
pub const __WINT_WIDTH__ = 32;
pub const __F16C__ = 1;
pub const WGPUColorWrite_BLUE = 4;
pub const __SHRT_MAX__ = 32767;
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = 8;
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = 2;
pub const __POINTER_WIDTH__ = 64;
pub const PTRDIFF_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-c_long(9223372036854775807), -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-c_long(9223372036854775807), -1) else (-c_long(9223372036854775807))(-1);
pub const __PTRDIFF_MAX__ = c_long(9223372036854775807);
pub const __INT32_FMTd__ = c"d";
pub const __FLT16_DIG__ = 3;
pub const __DBL_MIN__ = 0.000000;
pub const __SIZEOF_LONG__ = 8;
pub const __S32_TYPE = int;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __INTPTR_WIDTH__ = 64;
pub const __FLT16_MAX_10_EXP__ = 4;
pub const __INT_FAST32_TYPE__ = int;
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const __W_CONTINUED = 65535;
pub const @"false" = 0;
pub const __NO_INLINE__ = 1;
pub const __UINT_FAST32_FMTX__ = c"X";
pub const _POSIX_SOURCE = 1;
pub const __LITTLE_ENDIAN = 1234;
pub const __HAVE_FLOAT128 = 0;
pub const __gnu_linux__ = 1;
pub const __INT_FAST32_MAX__ = 2147483647;
pub const _BITS_PTHREADTYPES_COMMON_H = 1;
pub const __UINTMAX_FMTu__ = c"lu";
pub const __BMI__ = 1;
pub const INT_FAST8_MAX = 127;
pub const __FLT_RADIX__ = 2;
pub const __GLIBC_MINOR__ = 29;
pub const _STDINT_H = 1;
pub const __timer_t_defined = 1;
pub const __FLT16_HAS_INFINITY__ = 1;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = 1;
pub const INT_FAST8_MIN = -128;
pub const __GCC_ATOMIC_INT_LOCK_FREE = 2;
pub const _BITS_BYTESWAP_H = 1;
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = 3;
pub const _STRUCT_TIMESPEC = 1;
pub const _BITS_STDINT_INTN_H = 1;
pub const __FLT16_DECIMAL_DIG__ = 5;
pub const __PRAGMA_REDEFINE_EXTNAME = 1;
pub const __INT_FAST8_FMTd__ = c"hhd";
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __USE_POSIX199506 = 1;
pub const __INT32_TYPE__ = int;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __UINTMAX_WIDTH__ = 64;
pub const __PTHREAD_MUTEX_USE_UNION = 0;
pub const __FLT_MIN__ = 0.000000;
pub const __INT64_FMTi__ = c"li";
pub const __UINT_FAST64_FMTu__ = c"lu";
pub const __INT8_FMTd__ = c"hhd";
pub const INT_LEAST16_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-32767, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-32767, -1) else (-32767)(-1);
pub const __INT_FAST16_TYPE__ = short;
pub const __HAVE_DISTINCT_FLOAT128 = 0;
pub const INT64_MAX = if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Pointer) @ptrCast(__INT64_C, 9223372036854775807) else if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Int) @intToPtr(__INT64_C, 9223372036854775807) else __INT64_C(9223372036854775807);
pub const WGPUTextureUsage_COPY_DST = 2;
pub const __FLT_MAX_EXP__ = 128;
pub const __XSAVE__ = 1;
pub const __DBL_MAX_10_EXP__ = 308;
pub const __LDBL_MIN__ = 0.000000;
pub const __LWP__ = 1;
pub const __INT_FAST64_FMTi__ = c"li";
pub const __INT_LEAST8_FMTd__ = c"hhd";
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = 2;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __UINT_LEAST32_FMTX__ = c"X";
pub const __GID_T_TYPE = __U32_TYPE;
pub const __PIC__ = 2;
pub const __UINTMAX_MAX__ = c_ulong(18446744073709551615);
pub const WGPUBufferUsage_STORAGE_READ = 256;
pub const __UINT_FAST16_FMTo__ = c"ho";
pub const _DEFAULT_SOURCE = 1;
pub const __FD_SETSIZE = 1024;
pub const __LDBL_DECIMAL_DIG__ = 21;
pub const WGPUMAX_BIND_GROUPS = 4;
pub const __UINT_LEAST64_FMTX__ = c"lX";
pub const __clang_minor__ = 0;
pub const __LDBL_REDIR_DECL = name;
pub const INTMAX_MAX = if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Pointer) @ptrCast(__INT64_C, 9223372036854775807) else if (@typeId(@typeOf(9223372036854775807)) == @import("builtin").TypeId.Int) @intToPtr(__INT64_C, 9223372036854775807) else __INT64_C(9223372036854775807);
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __SIZEOF_FLOAT128__ = 16;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __UINT_FAST64_FMTo__ = c"lo";
pub const __SIZE_FMTx__ = c"lx";
pub const INT_FAST16_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-c_long(9223372036854775807), -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-c_long(9223372036854775807), -1) else (-c_long(9223372036854775807))(-1);
pub const WGPUMAX_VERTEX_BUFFERS = 8;
pub const __DBL_MAX__ = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878;
pub const WGPUBufferUsage_VERTEX = 32;
pub const __DBL_EPSILON__ = 0.000000;
pub const __UINT64_FMTx__ = c"lx";
pub const @"true" = 1;
pub const INT_FAST32_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-c_long(9223372036854775807), -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-c_long(9223372036854775807), -1) else (-c_long(9223372036854775807))(-1);
pub const INT32_MAX = 2147483647;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __CHAR_BIT__ = 8;
pub const __WCOREFLAG = 128;
pub const __INT16_FMTi__ = c"hi";
pub const __SLONG32_TYPE = int;
pub const _DEBUG = 1;
pub const __GNUC_MINOR__ = 2;
pub const INT_LEAST32_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-2147483647, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-2147483647, -1) else (-2147483647)(-1);
pub const INT32_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-2147483647, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-2147483647, -1) else (-2147483647)(-1);
pub const __restrict_arr = __restrict;
pub const __UINT_FAST32_MAX__ = c_uint(4294967295);
pub const __RLIM_T_MATCHES_RLIM64_T = 1;
pub const WGPUColorWrite_RED = 1;
pub const __UINT8_FMTX__ = c"hhX";
pub const NFDBITS = __NFDBITS;
pub const __FLT_EPSILON__ = 0.000000;
pub const INT_FAST32_MAX = c_long(9223372036854775807);
pub const UINT_FAST8_MAX = 255;
pub const __UINTPTR_WIDTH__ = 64;
pub const __llvm__ = 1;
pub const __UINT_FAST64_MAX__ = c_ulong(18446744073709551615);
pub const __INT_FAST32_FMTi__ = c"i";
pub const __WNOTHREAD = 536870912;
pub const __time_t_defined = 1;
pub const WGPUBufferUsage_INDIRECT = 512;
pub const INT16_MAX = 32767;
pub const __FLT_HAS_INFINITY__ = 1;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __AES__ = 1;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const NULL = if (@typeId(@typeOf(0)) == @import("builtin").TypeId.Pointer) @ptrCast([*c]void, 0) else if (@typeId(@typeOf(0)) == @import("builtin").TypeId.Int) @intToPtr([*c]void, 0) else ([*c]void)(0);
pub const __UINT8_FMTx__ = c"hhx";
pub const __INTMAX_C_SUFFIX__ = L;
pub const __ORDER_LITTLE_ENDIAN__ = 1234;
pub const __time64_t = __time_t;
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __INT16_FMTd__ = c"hd";
pub const __UINT32_FMTX__ = c"X";
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const WGPUBufferUsage_MAP_WRITE = 2;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = 1;
pub const UINT_LEAST8_MAX = 255;
pub const __PTHREAD_MUTEX_NUSERS_AFTER_KIND = 0;
pub const __UINT32_C_SUFFIX__ = U;
pub const __INT32_MAX__ = 2147483647;
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = 2;
pub const __INTMAX_WIDTH__ = 64;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = 2;
pub const EXIT_FAILURE = 1;
pub const __USE_POSIX = 1;
pub const __BIT_TYPES_DEFINED__ = 1;
pub const __SIZE_FMTo__ = c"lo";
pub const __DBL_HAS_QUIET_NAN__ = 1;
pub const __PDP_ENDIAN = 3412;
pub const __INT_FAST8_FMTi__ = c"hhi";
pub const __UINT_LEAST32_FMTo__ = c"o";
pub const __STDC_UTF_16__ = 1;
pub const __bdver2__ = 1;
pub const WGPUColorWrite_ALL = 15;
pub const __UINT_LEAST32_MAX__ = c_uint(4294967295);
pub const __ATOMIC_RELEASE = 3;
pub const __UINT_FAST16_FMTx__ = c"hx";
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __UINTMAX_C_SUFFIX__ = UL;
pub const __FLT_MIN_EXP__ = -125;
pub const __SIZEOF_LONG_DOUBLE__ = 16;
pub const __UINT_LEAST64_FMTu__ = c"lu";
pub const __ldiv_t_defined = 1;
pub const __GCC_ATOMIC_LONG_LOCK_FREE = 2;
pub const __ORDER_PDP_ENDIAN__ = 3412;
pub const __SIZEOF_PTHREAD_BARRIER_T = 32;
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = 0;
pub const __INT_FAST64_FMTd__ = c"ld";
pub const INT_LEAST8_MIN = -128;
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = 2;
pub const __GXX_ABI_VERSION = 1002;
pub const __INT16_TYPE__ = short;
pub const __SSE2_MATH__ = 1;
pub const INTPTR_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-c_long(9223372036854775807), -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-c_long(9223372036854775807), -1) else (-c_long(9223372036854775807))(-1);
pub const __FLT_MANT_DIG__ = 24;
pub const UINT_LEAST16_MAX = 65535;
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = 0;
pub const UINT_LEAST32_MAX = c_uint(4294967295);
pub const __UINT_FAST64_FMTx__ = c"lx";
pub const __STDC__ = 1;
pub const __HAVE_FLOAT64X_LONG_DOUBLE = 1;
pub const __INT_FAST8_MAX__ = 127;
pub const WGPUColorWrite_GREEN = 2;
pub const WGPUColorWrite_COLOR = 7;
pub const __INTPTR_FMTd__ = c"ld";
pub const __GNUC_PATCHLEVEL__ = 1;
pub const __SIZE_WIDTH__ = 64;
pub const __UINT_LEAST8_FMTx__ = c"hhx";
pub const __INT_LEAST64_FMTi__ = c"li";
pub const __HAVE_DISTINCT_FLOAT64 = 0;
pub const __SSE4_2__ = 1;
pub const __STDC_IEC_559__ = 1;
pub const __AVX__ = 1;
pub const WGPUTextureUsage_OUTPUT_ATTACHMENT = 16;
pub const __USE_ISOC99 = 1;
pub const __INT_FAST16_MAX__ = 32767;
pub const __INTPTR_MAX__ = c_long(9223372036854775807);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = 2;
pub const __UINT64_FMTu__ = c"lu";
pub const __have_pthread_attr_t = 1;
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __SSE2__ = 1;
pub const __INT_MAX__ = 2147483647;
pub const __tune_bdver2__ = 1;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __INTMAX_FMTi__ = c"li";
pub const __DBL_DENORM_MIN__ = 0.000000;
pub const __clang_major__ = 8;
pub const __FLT16_MANT_DIG__ = 11;
pub const __GNUC__ = 4;
pub const WGPUShaderStage_FRAGMENT = 2;
pub const __UINT32_MAX__ = c_uint(4294967295);
pub const UINTPTR_MAX = c_ulong(18446744073709551615);
pub const _POSIX_C_SOURCE = c_long(200809);
pub const __FLT_DENORM_MIN__ = 0.000000;
pub const __DBL_MAX_EXP__ = 1024;
pub const __INT8_FMTi__ = c"hhi";
pub const __BIG_ENDIAN = 4321;
pub const __UINT_LEAST16_MAX__ = 65535;
pub const SIG_ATOMIC_MIN = if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Pointer) @ptrCast(-2147483647, -1) else if (@typeId(@typeOf(-1)) == @import("builtin").TypeId.Int) @intToPtr(-2147483647, -1) else (-2147483647)(-1);
pub const __HAVE_DISTINCT_FLOAT32X = 0;
pub const __LDBL_HAS_DENORM__ = 1;
pub const __FLT16_MIN_10_EXP__ = -13;
pub const __LDBL_HAS_QUIET_NAN__ = 1;
pub const __UINT_FAST8_MAX__ = 255;
pub const __DBL_MIN_10_EXP__ = -307;
pub const __GLIBC_USE_LIB_EXT2 = 0;
pub const __SIZEOF_PTHREAD_MUTEX_T = 40;
pub const __UINT8_FMTu__ = c"hhu";
pub const __OFF_T_MATCHES_OFF64_T = 1;
pub const WINT_MAX = c_uint(4294967295);
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const UINT_FAST16_MAX = c_ulong(18446744073709551615);
pub const __HAVE_FLOAT128X = 0;
pub const __SSE4A__ = 1;
pub const __INT_FAST64_MAX__ = c_long(9223372036854775807);
pub const __SSE3__ = 1;
pub const WGPUShaderStage_VERTEX = 1;
pub const __UINT16_FMTu__ = c"hu";
pub const WGPUMAX_COLOR_TARGETS = 4;
pub const __ATOMIC_SEQ_CST = 5;
pub const __SIZE_FMTu__ = c"lu";
pub const __LDBL_MIN_EXP__ = -16381;
pub const __UINT_FAST32_FMTu__ = c"u";
pub const __pie__ = 2;
pub const SIZE_MAX = c_ulong(18446744073709551615);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __clang_patchlevel__ = 1;
pub const WGPUBufferUsage_UNIFORM = 64;
pub const __SIZEOF_LONG_LONG__ = 8;
pub const __HAVE_DISTINCT_FLOAT64X = 0;
pub const __GNUC_STDC_INLINE__ = 1;
pub const __PCLMUL__ = 1;
pub const __FXSR__ = 1;
pub const __UINT8_MAX__ = 255;
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = 1;
pub const __UINT32_FMTx__ = c"x";
pub const __UINT16_FMTo__ = c"ho";
pub const __POPCNT__ = 1;
pub const __OPENCL_MEMORY_SCOPE_DEVICE = 2;
pub const INT_LEAST8_MAX = 127;
pub const __SIZEOF_PTHREAD_CONDATTR_T = 4;
pub const __UINT32_FMTu__ = c"u";
pub const WNOHANG = 1;
pub const __SIZEOF_PTHREAD_COND_T = 48;
pub const WGPUTextureUsage_UNINITIALIZED = 65535;
pub const __SIZEOF_POINTER__ = 8;
pub const __TIMER_T_TYPE = [*c]void;
pub const __unix = 1;
pub const _BITS_UINTN_IDENTITY_H = 1;
pub const __SIZE_MAX__ = c_ulong(18446744073709551615);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = 0;
pub const __INT_FAST16_FMTd__ = c"hd";
pub const unix = 1;
pub const __UINT_LEAST32_FMTu__ = c"u";
pub const __FLT_MAX__ = 340282346999999984391321947108527833088.000000;
pub const __HAVE_DISTINCT_FLOAT32 = 0;
pub const __USE_ISOC11 = 1;
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = 2;
pub const __ATOMIC_CONSUME = 1;
pub const __unix__ = 1;
pub const UINT32_MAX = c_uint(4294967295);
pub const __x86_64__ = 1;
pub const __LDBL_HAS_INFINITY__ = 1;
pub const __WORDSIZE_TIME64_COMPAT32 = 1;
pub const __UINTMAX_FMTx__ = c"lx";
pub const __UINT64_C_SUFFIX__ = UL;
pub const __GNU_LIBRARY__ = 6;
pub const __FLT_MIN_10_EXP__ = -37;
pub const __INT_LEAST16_MAX__ = 32767;
pub const __clock_t_defined = 1;
pub const __UINT32_FMTo__ = c"o";
pub const WGPUBufferUsage_MAP_READ = 1;
pub const __UINTPTR_FMTo__ = c"lo";
pub const _SYS_SELECT_H = 1;
pub const __INT_LEAST16_FMTd__ = c"hd";
pub const __UINTPTR_FMTx__ = c"lx";
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = 1;
pub const __INT_LEAST64_FMTd__ = c"ld";
pub const UINT64_MAX = if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Pointer) @ptrCast(__UINT64_C, 18446744073709551615) else if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Int) @intToPtr(__UINT64_C, 18446744073709551615) else __UINT64_C(18446744073709551615);
pub const _SYS_TYPES_H = 1;
pub const __INT_LEAST16_TYPE__ = short;
pub const WGPUBufferUsage_INDEX = 16;
pub const __attribute_alloc_size__ = params;
pub const __attribute_copy__ = arg;
pub const __ORDER_BIG_ENDIAN__ = 4321;
pub const __LDBL_MIN_10_EXP__ = -4931;
pub const __INT_LEAST8_MAX__ = 127;
pub const __SIZEOF_INT__ = 4;
pub const __USE_POSIX_IMPLICITLY = 1;
pub const WGPUMAX_MIP_LEVELS = 16;
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = 2;
pub const INT8_MIN = -128;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const __amd64 = 1;
pub const __TBM__ = 1;
pub const _BITS_TIME64_H = 1;
pub const INT8_MAX = 127;
pub const __OBJC_BOOL_IS_BOOL = 0;
pub const __LDBL_MAX_10_EXP__ = 4932;
pub const __SIZEOF_INT128__ = 16;
pub const __UINT_FAST8_FMTx__ = c"hhx";
pub const UINT_FAST32_MAX = c_ulong(18446744073709551615);
pub const __PIE__ = 2;
pub const __SIZEOF_PTHREAD_RWLOCK_T = 56;
pub const __glibc_c99_flexarr_available = 1;
pub const __linux = 1;
pub const __sigset_t_defined = 1;
pub const __UINT16_FMTx__ = c"hx";
pub const __UINTPTR_FMTu__ = c"lu";
pub const __UINT_LEAST16_FMTX__ = c"hX";
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = 4;
pub const WCHAR_MIN = __WCHAR_MIN;
pub const __amd64__ = 1;
pub const __UINT_FAST32_FMTo__ = c"o";
pub const __linux__ = 1;
pub const __clang__ = 1;
pub const __LP64__ = 1;
pub const INT_FAST16_MAX = c_long(9223372036854775807);
pub const __SYSCALL_WORDSIZE = 64;
pub const __PTRDIFF_FMTi__ = c"li";
pub const __SSE4_1__ = 1;
pub const __LDBL_DIG__ = 18;
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const _BITS_TYPESIZES_H = 1;
pub const WCONTINUED = 8;
pub const __UINT64_FMTo__ = c"lo";
pub const __INT_FAST32_FMTd__ = c"d";
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const _BITS_PTHREADTYPES_ARCH_H = 1;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const __ATOMIC_ACQ_REL = 4;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = 4;
pub const __LONG_LONG_MAX__ = c_longlong(9223372036854775807);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = 4;
pub const _ENDIAN_H = 1;
pub const __INO_T_MATCHES_INO64_T = 1;
pub const INT_LEAST16_MAX = 32767;
pub const __GLIBC__ = 2;
pub const WUNTRACED = 2;
pub const UINT_FAST64_MAX = if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Pointer) @ptrCast(__UINT64_C, 18446744073709551615) else if (@typeId(@typeOf(18446744073709551615)) == @import("builtin").TypeId.Int) @intToPtr(__UINT64_C, 18446744073709551615) else __UINT64_C(18446744073709551615);
pub const INT_LEAST32_MAX = 2147483647;
pub const __XOP__ = 1;
pub const __INTMAX_MAX__ = c_long(9223372036854775807);
pub const __UINT_LEAST32_FMTx__ = c"x";
pub const __WORDSIZE = 64;
pub const __WCHAR_MAX__ = 2147483647;
pub const __INT64_MAX__ = c_long(9223372036854775807);
pub const WSTOPPED = 2;
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = 2;
pub const __INT_LEAST64_MAX__ = c_long(9223372036854775807);
pub const _BITS_STDINT_UINTN_H = 1;
pub const WNOWAIT = 16777216;
pub const __UINTMAX_FMTX__ = c"lX";
pub const WGPUColorWrite_ALPHA = 8;
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = 0;
pub const __FLT_HAS_DENORM__ = 1;
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __WCLONE = 2147483648;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __INT32_FMTi__ = c"i";
pub const __DBL_HAS_INFINITY__ = 1;
pub const __FINITE_MATH_ONLY__ = 0;
pub const WGPUShaderStage_NONE = 0;
pub const __va_list_tag = struct___va_list_tag;
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
