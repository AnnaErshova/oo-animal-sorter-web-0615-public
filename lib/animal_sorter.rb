# Build a class AnimalSorter

# Make sure there are two constants that AnimalSorter knows about, 
# SEA_ANIMALS and LAND_ANIMALS

# AnimalSorter should be able to accept an array of animals on 
# initialization.

# Define a to_a method to account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

class AnimalSorter

  # attr_accessor :SEA_ANIMALS # this is an array
  # attr_accessor :LAND_ANIMALS # this is an array
  # attr_accessor :sea_animals, :land_animals, :animal_array
  
  SEA_ANIMALS = ["marlin", "octopus", "fish"]
  # http://en.wikipedia.org/wiki/Aardvark
  LAND_ANIMALS = ["aardvark", "cat", "elephant"]


  def initialize(animal_array)
    @animal_array = animal_array
  end

  def to_a

    sea_animals = Array.new
    land_animals = Array.new

    @animal_array.each do |animal|
      if SEA_ANIMALS.include?(animal)
        sea_animals << animal
      else
        land_animals << animal
      end
    end
    [sea_animals,land_animals]
    # sea creatures first, land creatures second
    # creates a nested array
  end  

end