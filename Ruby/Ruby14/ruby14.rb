require_relative 'reversestring'


def to_reverse_string
  puts "Enter the String to reverse"

  reverse_str = ReverseString.new(gets.chomp)

  puts reverse_str
end


to_reverse_string