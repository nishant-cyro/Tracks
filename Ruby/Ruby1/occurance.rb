class CharacterOccurance
  def initialize input_string
    @input_string = input_string
    @occurance = Hash.new
  end

  def count_occurance
    @input_string.gsub(/[a-z]/i) do |char|
      if @occurance.has_key?(char)
        @occurance[char] += 1
      else
        @occurance[char] = 1
      end
    end
  end

  def print_occurance
    @occurance.each do |key, value|
      puts "#{key} - #{value}"
    end
  end
end
