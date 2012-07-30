require_relative 'addtime'

def adding_time

  puts "Enter the first time"
  time1 = gets.chomp

  puts "Enter the second time"
  time2 = gets.chomp

  add_time = AddTime.new(time1, time2)

  add_time.adding_time if add_time.flag

end

adding_time