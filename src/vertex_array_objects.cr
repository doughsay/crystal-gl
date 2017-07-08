module GL
  def self.bind_vertex_array(vertex_array : VertexArray)
    LibGL.bind_vertex_array(vertex_array)
  end

  def self.delete_vertex_array(vertex_array : VertexArray)
    delete_vertex_arrays([vertex_array])
  end

  def self.delete_vertex_arrays(vertex_arrays : Array(VertexArray))
    LibGL.delete_vertex_arrays(vertex_arrays.size, vertex_arrays.map(&.value))
  end

  def self.gen_vertex_array : VertexArray
    LibGL.gen_vertex_arrays(1_u32, out id)
    VertexArray.new(id)
  end

  def self.gen_vertex_arrays(n : Int) : Array(VertexArray)
    Array(UInt32).build(n) do |buff|
      LibGL.gen_vertex_arrays(n, buff)
      n
    end.map { |id| VertexArray.new(id) }
  end
end
