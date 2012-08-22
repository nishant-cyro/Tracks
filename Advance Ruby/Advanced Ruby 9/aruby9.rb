
require_relative 'mymodule'

class Hello
  include MyModule

  def greet
    puts "hello"
  end

  def put?
    puts "in put"
  end

  def cut?
    puts "in cut"
  end
	
  chained_alaising :greet, :put?, :cut?
end

say = Hello.new
say.greet
say.greet_with_logger
say.greet_without_logger
say.greet_with_logger
say.greet_without_logger
say.put?
say.cut?
