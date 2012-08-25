class Fibonaci
  def initialize limit
    @limit = limit.to_i
    @numbers = Array.new
  end

  def fibonaci
    @numbers[0] = 0
    result = 1
    i = 1

    while result <= @limit
      @numbers << result
      result = yield @numbers[i], @numbers[i-1]
      i += 1
    end
  end

  def print_fibonaci
    puts "Fibonaci series upto #{@limit} is:"
    puts @numbers
  end
end