class Pascal
  def initialize(limit)
    @limit = limit.to_i
  end

  def draw_pascal
    i = 0
    while i <= @limit
      j = 0
      while j <= i
        print "#{binomial(i,j)} "
        j += 1
      end
      puts "\n"
      i += 1
    end
  end

  def binomial(i, j)
    factorial(i) / (factorial(j) * factorial(i-j))
  end

  def factorial(end_num)
      range = Range.new(1, end_num, false)
      result = 1
      range.each do |number|
        result *= number
      end
      return result 
    end
end