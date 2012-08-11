def increment_counter(result, number)
	@result = result
	@number = number
	lambda{ @result += @number }
end

count = increment_counter(10, 3)

puts count.call
puts count.call
puts count.call