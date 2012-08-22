
require_relative 'myobjectstore'

class Hello

  @name = nil
  @city = nil

  def initialize(name, city)
    @name = name
    @city = city
  end

  include MyObjectStore
  validate_presence_of :name

  def validate
    puts "validating"
  end
end

h = Hello.new("hello", "delhi")
h.save

h1 = Hello.new("hello", "mumbai")
h1.save

puts "Objects with city Mumbai"
Hello.find_by_city("mumbai")

puts "Collection"
Hello.collect

puts "Total Objects"
Hello.count