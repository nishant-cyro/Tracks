
require_relative 'bike'

def bike_dealing

  b = Bike.new("Suzuki", 50000, "Vijay")
  b.price = 55000
  puts b.show
end

bike_dealing
