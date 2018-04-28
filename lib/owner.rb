class Owner
  @@owners = []
  attr_accessor :name
  attr_reader :species

  def initialize(species)
    @species = species
    @@owners << self
  end

  def buy_fish(name)
    fish = Fish.new(name)
    pets[:fishes] << fish
  end

  def say_species
    puts "I am a #{@species}."
  end

  def pets
    { fishes: [], dogs: [], cats: [] }
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
