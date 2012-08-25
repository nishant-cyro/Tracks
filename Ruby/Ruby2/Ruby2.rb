require_relative 'fibonaci'

def calculating_fibonaci 
  puts "Enter the limit of fibonaci"
  limit = gets.chomp
  fibonaci_series = Fibonaci.new limit
  fibonaci_series.fibonaci { |cur_number, last_number| cur_number + last_number }
  fibonaci_series.print_fibonaci
end

calculating_fibonaci

  