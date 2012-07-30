require_relative 'pascal'

def finding_pascal_triangle

  puts "Enter the limit of pascal triangle"

  pascal_triangle = Pascal.new(gets.chomp)
  pascal_triangle.draw_pascal

end

finding_pascal_triangle