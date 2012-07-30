
require_relative 'vehicle'

class Bike < Vehicle

  def initialize(name, price, dealer)
    super(name, price)
    @dealer = dealer
  end

  def show
    "Name : #{@name}, Price : #{@price}, Dealer : #{@dealer}"
  end
end