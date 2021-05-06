require_relative 'castle'
require_relative 'house'
require_relative 'skyscraper'

# house
white_house = House.new('White House', 20, 25)
puts "The #{white_house.name} house has an area of #{white_house.floor_area}"

# castle
tower_of_london = Castle.new('Tower of London', 32, 35)
puts "The #{tower_of_london.name} castle has an area of #{tower_of_london.floor_area}"
puts "Has a butler? #{tower_of_london.has_a_butler?}"
tower_of_london.add_butler('Jeeves')
puts "Has a butler? #{tower_of_london.has_a_butler?}"

# Error!
# puts "Does White House have a butler? #{white_house.has_a_butler?}"

# skyscraper
burj_khalifa = Skyscraper.new('Burj Khalifa', 60, 60)
puts "The #{burj_khalifa.name} has an area of #{burj_khalifa.floor_area}"

# => ['Norman', 'Crusader', 'Ottoman', 'English']
p Castle.categories
p tower_of_london.categories
