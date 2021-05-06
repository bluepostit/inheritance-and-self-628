class Restaurant
  attr_reader :name, :address
  attr_accessor :capacity

  def initialize(name, address, capacity = 20)
    @name = name
    @address = address
    @capacity = capacity
    @reservations = []
  end

  def open?
    Time.now.hour >= 10 && Time.now.hour <= 22
  end

  def reserve(customer_name)
    @reservations << customer_name
  end
end

on_the_square = Restaurant.new('On the Square', 'Johannesburg', 100)
# p on_the_square

puts "#{on_the_square.name} is a restaurant in #{on_the_square.address}, and has a capacity of #{on_the_square.capacity}"

on_the_square.capacity = 120
puts "#{on_the_square.name} is a restaurant in #{on_the_square.address}, and has a capacity of #{on_the_square.capacity}"

puts "Is the restaurant open? #{on_the_square.open?}"

p on_the_square
on_the_square.reserve('Sally Smith')
p on_the_square
