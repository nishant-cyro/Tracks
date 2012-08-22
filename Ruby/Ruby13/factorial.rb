class Factorial
  def initialize(end_num)
    @end_num = end_num.to_f
    @result = 1
  end

  def calculate_factorial
    range = Range.new(1, @end_num, false)
    range.each do |number|
      @result = @result * number
    end
    puts "Factorial of #{@end_num} is #{@result}"
  end
end