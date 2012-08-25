
require_relative 'occurance'

def counting_occurance
  puts "Enter the string"
  input_string = gets.chomp

  occurrance_object = CharacterOccurance.new input_string
  occurrance_object.count_occurance
  occurrance_object.print_occurance
end

counting_occurance