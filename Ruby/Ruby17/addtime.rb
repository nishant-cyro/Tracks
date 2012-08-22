
require 'time'

class AddTime
  attr_reader :flag

  def initialize(time1, time2)
    raise "First Time is wrongly entered." if wrong_time? time1
    raise "Second Time is wrongly entered." if wrong_time? time2

    @time1 = Time.parse time1
    @time2 = Time.parse time2

    @day = 0
    @flag = true

    rescue Exception => e
    @flag = false
    puts e.message
  end

  def wrong_time?(time_under_check)
    regex = /^((([0-1]?[0-9])|([2]?[0-3])):([0-5]?[0-9]):([0-5]?[0-9]))$/
  
    if time_under_check.match(regex) == nil
      return true
    else
      return false
    end
  end


  def adding_time
    carry_minutes, seconds = (@time1.sec + @time2.sec).divmod 60
    carry_hours, minutes = (@time1.min + @time2.min + carry_minutes).divmod 60
    day, hours = (@time1.hour + @time2.hour + carry_hours).divmod 24

    new_time = Time.parse("#{hours}:#{minutes}:#{seconds}")

    if day == 0
      puts "#{new_time.strftime("%H:%M:%S")}"
    else
      puts "#{new_time.strftime("%H:%M:%S")} & #{day} day"
    end
  end
end