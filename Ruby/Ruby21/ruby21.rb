
require_relative 'factorial'

def  cal_fact
  puts "Enter the the number to calculate the factorial"
  fact = Factorial.new(gets.chomp)
  fact.calculate_factorial
end

cal_fact
