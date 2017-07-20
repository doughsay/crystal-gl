module GL
  def self.enable(cap : Capability)
    LibGL.enable(cap)
  end

  def self.line_width(width : Float)
    LibGL.line_width(width.to_f32)
  end

  def self.polygon_mode(face : PolygonFace, mode : PolygonMode)
    LibGL.polygon_mode(face, mode)
  end
end
