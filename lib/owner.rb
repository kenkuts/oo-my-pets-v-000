class Owner
  @@owners = []
  attr_accessor :name
  attr_reader :species

  def initialize(species)
    @species = species
    @pets = { fishes: [], dogs: [], cats: [] }
    @@owners << self
  end

  def say_species
    puts "I am a #{@species}."
  end

  def pets

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
