module GL
  abstract class Wrapper
    getter :value

    def to_unsafe
      @value
    end
  end

  class UInt32Wrapper < Wrapper
    def initialize(@value : UInt32); end
  end

  class Buffer < UInt32Wrapper; end
  class Shader < UInt32Wrapper; end
  class ShaderProgram < UInt32Wrapper; end
  class VertexArray < UInt32Wrapper; end

  class Int32Wrapper < Wrapper
    def initialize(@value : Int32); end
  end

  class Uniform < Int32Wrapper; end
end
