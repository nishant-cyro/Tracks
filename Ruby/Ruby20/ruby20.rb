
require_relative 'interest'

def interest_difference

  puts "Enter the Principal"
  p = gets.chomp

  puts "Enter the no. of years"
  t = gets.chomp


  interest = Interest.new(p.to_i, t.to_i)
  puts interest.diffInInterest

end

interest_difference