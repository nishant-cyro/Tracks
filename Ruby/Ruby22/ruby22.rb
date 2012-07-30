require_relative 'name'

def checkname

  puts "Enter First Name"
  firstname = gets.chomp

  puts "Enter Last Name"
  lastname = gets.chomp

  name = Name.new(firstname, lastname)

end

checkname