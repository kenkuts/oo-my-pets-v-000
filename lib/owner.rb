class Owner
  @@owners = []

  def initialize(name)
    @name = name
    @@owners << self
  end
end
