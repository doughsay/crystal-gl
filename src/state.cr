module GL
  def self.enable(cap : Capability)
    LibGL.enable(cap)
  end
end
