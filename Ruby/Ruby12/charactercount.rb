class CharacterCount

  def initialize(str)
    @str = str
    @counter_array = [0, 0, 0, 0]
  end

  def counting_characters
    @str.each_char do |character|
    case character
      when '0'..'9'
        then @counter_array[0] += 1
      when 'a'..'z'
        then @counter_array[1] += 1
      when 'A'..'Z'
        then @counter_array[2] += 1
      else
        @counter_array[3] += 1
      end
    end
    puts "Digits : #{@counter_array[0]}"
    puts "Lower Case Characters : #{@counter_array[1]}"
    puts "Upper Case Characters : #{@counter_array[2]}"
    puts "Special Characters : #{@counter_array[3]}"
  end
end
