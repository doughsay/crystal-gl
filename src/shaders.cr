module GL
  def self.attach_shader(program : ShaderProgram, shader : Shader)
    LibGL.attach_shader(program, shader)
  end

  def self.compile_shader(shader : Shader)
    LibGL.compile_shader(shader)
  end

  def self.create_program : ShaderProgram
    ShaderProgram.new(LibGL.create_program)
  end

  def self.create_shader(shader_type : ShaderType) : Shader
    Shader.new(LibGL.create_shader(shader_type))
  end

  def self.delete_shader(shader : Shader)
    LibGL.delete_shader(shader)
  end

  def self.get_program_link_status(program : ShaderProgram) : Bool
    LibGL.get_programiv(program, LibGL::LINK_STATUS, out success)
    success == 1
  end

  def self.get_shader_compile_status(shader : Shader) : Bool
    LibGL.get_shaderiv(shader, LibGL::COMPILE_STATUS, out success)
    success == 1
  end

  def self.get_uniform_location(program : ShaderProgram, name : String) : Uniform
    Uniform.new(LibGL.get_uniform_location(program, name))
  end

  def self.link_program(program : ShaderProgram)
    LibGL.link_program(program)
  end

  def self.shader_source(shader : Shader, source : String)
    LibGL.shader_source(shader, 1, [source.to_unsafe], nil)
  end

  def self.uniform_matrix4fv(uniform : Uniform, count : Int, transpose : Bool, value : Pointer(Float32)) # TODO: fix value type
    LibGL.uniform_matrix4fv(uniform, count, transpose ? Boolean::True : Boolean::False, value)
  end

  def self.use_program(program : ShaderProgram)
    LibGL.use_program(program)
  end
end
