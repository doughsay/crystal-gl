module GL
  def self.clear(mask : BufferBit)
    LibGL.clear(mask)
  end

  def self.clear_color(red : Float, green : Float, blue : Float, alpha : Float)
    LibGL.clear_color(red.to_f32, green.to_f32, blue.to_f32, alpha.to_f32)
  end

  def self.clear_color(color : Color)
    clear_color(color.red, color.green, color.blue, color.alpha)
  end
end
