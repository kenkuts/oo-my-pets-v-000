class Owner
  @@owners = []
  attr_reader :species

  def initialize(species)
    @species = species
    @@owners << self
  end

  def self.reset_all
    @@owners.clear
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.size
  end

end
