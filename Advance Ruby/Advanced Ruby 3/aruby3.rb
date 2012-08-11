
require_relative 'newmethod'

def createNewMethod
  puts "Enter the name of method to define"
  method_name = gets.chomp

  puts "Enter the line of code"
  line_of_code = gets.chomp

  new_object = NewMethod.new method_name, line_of_code

  new_object.send(method_name)
end

createNewMethod