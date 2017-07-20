module GL
  def self.bind_buffer(target : BufferBindingTarget, buffer : Buffer)
    LibGL.bind_buffer(target, buffer)
  end

  def self.buffer_data(target : BufferBindingTarget, size : Int, data : Array(Number) | Nil, usage : BufferUsage)
    LibGL.buffer_data(target, size, data, usage)
  end

  def self.buffer_sub_data(target : BufferBindingTarget, offset : Int, size : Int, data : Array(Number))
    LibGL.buffer_sub_data(target, offset, size, data)
  end

  def self.delete_buffer(buffer : Buffer)
    delete_buffers([buffer])
  end

  def self.delete_buffers(buffers : Array(Buffer))
    LibGL.delete_buffers(buffers.size, buffers.map(&.value))
  end

  def self.draw_arrays(mode : Primitive, first : Int, count : Int)
    LibGL.draw_arrays(mode, first, count)
  end

  def self.draw_arrays_instanced(mode : Primitive, first : Int, count : Int, instancecount : Int)
    LibGL.draw_arrays_instanced(mode, first, count, instancecount)
  end

  def self.draw_elements(mode : Primitive, count : Int, type : Type, indices : Int)
    LibGL.draw_elements(mode, count, type, Pointer(Void).new(indices))
  end

  def self.draw_elements_instanced(mode : Primitive, count : Int, type : Type, indices : Int, instancecount : Int)
    LibGL.draw_elements_instanced(mode, count, type, Pointer(Void).new(indices), instancecount)
  end

  def self.enable_vertex_attrib_array(index : Int)
    LibGL.enable_vertex_attrib_array(index)
  end

  def self.gen_buffer : Buffer
    LibGL.gen_buffers(1_u32, out id)
    Buffer.new(id)
  end

  def self.gen_buffers(n : Int) : Array(Buffer)
    raise ArgumentError.new unless n > 0 && n < UInt32::MAX
    gen_buffers(n.to_u32)
  end

  def self.gen_buffers(n : Int) : Array(Buffer)
    Array(UInt32).build(n) do |buff|
      LibGL.gen_buffers(n, buff)
      n
    end.map { |id| Buffer.new(id) }
  end

  def self.vertex_attrib_divisor(index : Int, divisor : Int)
    LibGL.vertex_attrib_divisor(index, divisor)
  end

  def self.vertex_attrib_pointer(index : Int, size : Int, type : Type, normalized : Bool, stride : Int, offset : Int)
    LibGL.vertex_attrib_pointer(index, size, type, normalized ? Boolean::True : Boolean::False, stride, Pointer(Void).new(offset))
  end
end
