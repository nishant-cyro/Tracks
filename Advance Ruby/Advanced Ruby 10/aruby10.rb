
require_relative 'calling'

class Test
  include Calling

  before_calling :foo, 'only' => [:greet]
  after_calling :bar, 'except' => [:greet]

  def foo
    puts "foo"
  end

  def bar
    puts "bar"
  end

  def test_calling
    puts "test_calling"
  end

  def greet
    puts "greet"
  end

  def name
    puts "name"
  end
end

t = Test.new
t.greet
t.name