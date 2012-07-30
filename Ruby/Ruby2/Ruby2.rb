

#!/usr/bin/ruby

def fibonaci

  numbers = Array.new

  numbers[0] = 0
  numbers[1] = 1

  i = 1
  while numbers[i] < 1000
	numbers[i+1] = yield numbers[i], numbers[i-1]
    i += 1
  end

  puts numbers
end

fibonaci { |cur_number, last_number| cur_number + last_number }
