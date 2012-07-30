require_relative 'replacestring'


def replacing_string

  puts "Enter the required String"
  string  = gets.chomp

  puts "Enter the required pattern to replace in string"
  pattern  = gets.chomp


  replaced_string = ReplaceString.new(string, pattern)
  replaced_string.alter_pattern

end

replacing_string