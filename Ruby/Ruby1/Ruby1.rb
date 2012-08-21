
def count_occurance

  puts "Enter a string"

  answer = gets.chomp

  occurance = Hash.new

  puts answer

  answer.gsub(/[a-zA-Z]/) do |char|
    if occurance.has_key?(char)
      occurance[char] += 1
    else
      occurance[char] = 1
    end
  end

  occurance.each do |key, value|
	  puts "#{key} - #{value}"
  end
end

count_occurance