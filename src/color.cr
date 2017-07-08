module GL
  class Color
    getter :red, :green, :blue, :alpha

    @red : Float32
    @green : Float32
    @blue : Float32
    @alpha : Float32

    def initialize(@red, @green, @blue, @alpha); end

    def initialize(red : Float, green : Float, blue : Float, alpha : Float)
      @red = red.to_f32
      @green = green.to_f32
      @blue = blue.to_f32
      @alpha = alpha.to_f32
    end

    def initialize(red : Int, green : Int, blue : Int, alpha : Int)
      @red = red / 255.0_f32
      @green = green / 255.0_f32
      @blue = blue / 255.0_f32
      @alpha = alpha / 255.0_f32
    end
  end
end
