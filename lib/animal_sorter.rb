# Build a class AnimalSorter

# Make sure there are two constants that AnimalSorter knows about, 
# SEA_ANIMALS and LAND_ANIMALS

# AnimalSorter should be able to accept an array of animals on 
# initialization.

# Define a to_a method to account for the species in the test suite.

# Return an array that contains two arrays, the first one
# should include the sea creatures, the second, land animals.

class AnimalSorter
  SEA_ANIMALS = ["marlin", "octopus", "fish"]
  # http://en.wikipedia.org/wiki/Aardvark
  LAND_ANIMALS = ["aardvark", "cat", "elephant"]


  def initialize(animal_array)
    @animal_array = animal_array
  end

  def to_a # this is really just iterating over given arrays, sorting and pushing into a new array once sorted
    sea_animals = Array.new
    land_animals = Array.new
    @animal_array.each {|animal| SEA_ANIMALS.include?(animal) ? sea_animals << animal : land_animals << animal }       
    [sea_animals,land_animals] # explicit array with sea_animals first
    # OR return sea_animals,land_animals
    # sea creatures first, land creatures second
  end #ends to_a

end