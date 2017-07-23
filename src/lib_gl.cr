{% if flag?(:darwin) %}
  @[Link(framework: "OpenGL")]
{% else %}
  @[Link("GL")]
{% end %}

lib LibGL
  FALSE = 0
  TRUE = 1
  TRIANGLES = 0x0004_u32
  DEPTH_BUFFER_BIT = 0x0100_u32
  FRONT_AND_BACK = 0x0408_u32
  LINE_SMOOTH = 0x0B20_u32
  CULL_FACE = 0x0B44_u32
  DEPTH_TEST = 0x0B71_u32
  UNSIGNED_INT = 0x1405_u32
  FLOAT = 0x1406_u32
  POINT = 0x1B00_u32
  LINE = 0x1B01_u32
  FILL = 0x1B02_u32
  COLOR_BUFFER_BIT = 0x4000_u32
  MULTISAMPLE = 0x809D_u32
  ARRAY_BUFFER = 0x8892_u32
  ELEMENT_ARRAY_BUFFER = 0x8893_u32
  STREAM_DRAW = 0x88E0_u32
  STATIC_DRAW = 0x88E4_u32
  DYNAMIC_DRAW = 0x88E8_u32
  FRAGMENT_SHADER = 0x8B30_u32
  VERTEX_SHADER = 0x8B31_u32
  COMPILE_STATUS = 0x8B81_u32
  LINK_STATUS = 0x8B82_u32

  fun attach_shader = glAttachShader(program : UInt32, shader : UInt32)
  fun bind_buffer = glBindBuffer(target : UInt32, buffer : UInt32)
  fun bind_vertex_array = glBindVertexArray(array : UInt32)
  fun buffer_data = glBufferData(target : UInt32, size : Int32, data : Void*, usage : UInt32)
  fun buffer_sub_data = glBufferSubData(target : UInt32, offset : Int32, size : Int32, data : Void*)
  fun clear = glClear(mask : UInt32)
  fun clear_color = glClearColor(red : Float32, green : Float32, blue : Float32, alpha : Float32)
  fun compile_shader = glCompileShader(shader : UInt32)
  fun create_program = glCreateProgram() : UInt32
  fun create_shader = glCreateShader(type : UInt32) : UInt32
  fun delete_buffers = glDeleteBuffers(n : Int32, buffers : UInt32*)
  fun delete_shader = glDeleteShader(shader : UInt32)
  fun delete_vertex_arrays = glDeleteVertexArrays(n : Int32, arrays : UInt32*)
  fun draw_arrays = glDrawArrays(mode : UInt32, first : Int32, count : Int32)
  fun draw_arrays_instanced = glDrawArraysInstanced(mode : UInt32, first : Int32, count : Int32, primcount : Int32)
  fun draw_elements = glDrawElements(mode : UInt32, count : Int32, type : UInt32, indices : Void*)
  fun draw_elements_instanced = glDrawElementsInstanced(mode : UInt32, count : Int32, type : UInt32, indices : Void*, instancecount : Int32)
  fun enable = glEnable(cap : UInt32)
  fun enable_vertex_attrib_array = glEnableVertexAttribArray(index : UInt32)
  fun gen_buffers = glGenBuffers(n : Int32, buffers : UInt32*)
  fun gen_vertex_arrays = glGenVertexArrays(n : Int32, arrays : UInt32*)
  fun get_program_info_log = glGetProgramInfoLog(program : UInt32, bufSize : Int32, length : Int32*, infoLog : UInt8*)
  fun get_programiv = glGetProgramiv(program : UInt32, pname : UInt32, params : Int32*)
  fun get_shader_info_log = glGetShaderInfoLog(shader : UInt32, bufSize : Int32, length : Int32*, infoLog : UInt8*)
  fun get_shaderiv = glGetShaderiv(shader : UInt32, pname : UInt32, params : Int32*)
  fun get_uniform_location = glGetUniformLocation(program : UInt32, name : UInt8*)  : Int32
  fun line_width = glLineWidth(width : Float32)
  fun link_program = glLinkProgram(program : UInt32)
  fun polygon_mode = glPolygonMode(face : UInt32, mode : UInt32)
  fun shader_source = glShaderSource(shader : UInt32, count : Int32, string : UInt8**, length : Int32*)
  fun uniform3fv = glUniform3fv(location : Int32, count : Int32, value : Float32*)
  fun uniform_matrix4fv = glUniformMatrix4fv(location : Int32, count : Int32, transpose : UInt8, value : Float32*)
  fun use_program = glUseProgram(program : UInt32)
  fun vertex_attrib_divisor = glVertexAttribDivisor(index : UInt32, divisor : UInt32)
  fun vertex_attrib_pointer = glVertexAttribPointer(index : UInt32, size : Int32, type : UInt32, normalized : UInt8, stride : Int32, pointer : Void*)
end
