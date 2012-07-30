
require_relative 'charactercount'

def count_chars
  puts "Enter the String to count"
  c =CharacterCount.new(gets.chomp)
  c.counting_characters
end

count_chars