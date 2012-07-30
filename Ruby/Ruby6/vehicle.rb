class Vehicle

  attr_writer :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def show
    "Name : #{@name}, Price : #{@price}"
  end
end