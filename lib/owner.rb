class Owner
  @@owners = []

  def initialize(name)
    @name = name
    @@owners << self
  end

  def self.reset_all
    @@owners.clear
  end

  def self.all
    @@owners
  end
end
