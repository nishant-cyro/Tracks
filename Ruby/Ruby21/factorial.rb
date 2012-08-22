class Factorial
  def initialize(end_num)
    @end_num = end_num.to_i
    @result = 1
  end

  def calculate_factorial
    throw "Negative Number Exception" if @end_num < 0
    range = Range.new(1, @end_num, false)
	  
    range.each do |number|
      @result = @result * number
    end
	  
    puts "Factorial of #{@end_num} is #{@result}"

    rescue 
    puts "Factorial can't be calculated for a negative number"
  end
end