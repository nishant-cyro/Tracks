require_relative 'shape'

def finding_areas

  shape = Shape.new

  puts "Area of Circle with radius 5 unit is #{shape.area 5}"
  puts "Area of Rectangle with length 5 unit and breadth 10 unit is #{shape.area 5, 10}"
  puts "Area of Triangle with sides 5 unit, 10 unit and 13 unit is #{shape.area 5, 10, 13}"

end

finding_areas