
require 'time'

class AddTime
  attr_reader :flag

  def initialize(time)
    time.each do |selected_time|
      raise "#{selected_time} is wrongly entered." if wrong_time? selected_time
    end

    @time = Array.new

    i=0

    time.each do |selected_time|
      @time[i] = Time.parse selected_time
      i += 1
    end

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


  def adding_time(total_time, cur_time)
    carry_minutes, seconds = (total_time.sec + cur_time.sec).divmod 60
    carry_hours, minutes = (total_time.min + cur_time.min + carry_minutes).divmod 60
    day, hours = (total_time.hour + cur_time.hour + carry_hours).divmod 24

    new_time = Time.parse("#{hours}:#{minutes}:#{seconds}")

    return new_time, day
  end

  def cal_total_time
    total_time = Time.parse("0:0:0")
    @time.each do |selected_time|
      total_time, day = adding_time total_time, selected_time
      @day += day
    end
    puts "Total time is #{total_time.strftime("%H:%M:%S")} & #{@day} days" 
  end
end