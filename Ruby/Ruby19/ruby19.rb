

require_relative 'addtime'

def adding_time

  time = Array.new
  i = 0

  puts "Enter the 1 time and q or Q to quit"
  ans = gets.chomp

  while ans != 'q' && ans != 'Q'
	time[i] = ans
	i += 1
    puts "Enter the #{i + 1} time"
    ans = gets.chomp
  end

  add_time = AddTime.new(time)

  add_time.cal_total_time if add_time.flag

end

adding_time