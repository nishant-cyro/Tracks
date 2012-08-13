require_relative 'mystring'

def makingMyString

  puts "Enter the object of the MyString Class of this form MyString.new 'value'"
  mystring = instance_eval gets.chomp

  puts "Enter one of the two methods of MySting class"
  puts "exclude? arguement"
  puts "occurance arguement"

  func, arguement = gets.chomp.split " "

  mystring.send(func, arguement)
end

makingMyString