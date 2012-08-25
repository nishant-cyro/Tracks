require_relative 'vowel_replacement'

def vowel_replaced
  puts "Enter a string to be altered"
  input_string = gets.chomp
  
  vowel_replacement = VowelReplacement.new input_string
  puts vowel_replacement.replacing_vowels
end

vowel_replaced