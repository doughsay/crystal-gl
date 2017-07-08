module GL
  enum Boolean : UInt32
    False = LibGL::FALSE
    True = LibGL::TRUE
  end

  enum BufferBindingTarget : UInt32
    ArrayBuffer = LibGL::ARRAY_BUFFER
    ElementArrayBuffer = LibGL::ELEMENT_ARRAY_BUFFER
  end

  @[Flags]
  enum BufferBit : UInt32
    Depth = LibGL::DEPTH_BUFFER_BIT
    Color = LibGL::COLOR_BUFFER_BIT
  end

  enum BufferUsage : UInt32
    StreamDraw = LibGL::STREAM_DRAW
    StaticDraw = LibGL::STATIC_DRAW
    DynamicDraw = LibGL::DYNAMIC_DRAW
  end

  enum Capability : UInt32
    DepthTest = LibGL::DEPTH_TEST
    CullFace = LibGL::CULL_FACE
  end

  enum Primitive : UInt32
    Triangles = LibGL::TRIANGLES
  end

  enum ShaderType : UInt32
    VertexShader = LibGL::VERTEX_SHADER
    FragmentShader = LibGL::FRAGMENT_SHADER
  end

  enum Type : UInt32
    Float = LibGL::FLOAT
    UnsignedInt = LibGL::UNSIGNED_INT
  end
end
