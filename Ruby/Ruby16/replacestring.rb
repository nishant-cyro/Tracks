class ReplaceString
  def initialize(input_string, pattern)
	  @input_string = input_string
	  @pattern = pattern
  end

  def alter_pattern
  	count_pattern = 0
  	new_string = @input_string.gsub(@pattern) { |word| count_pattern += 1; "(" + word + ")"}
  	puts new_string
  	puts "Total Occurance : #{count_pattern}"
  end
end