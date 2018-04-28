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

  def buy_cat(name)
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
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
