class InverseString

	def initialize(str)
		@str = str
    end

    def to_s
    	@str.swapcase!
    end
end


puts "Enter the string to be altered"

inverse_object = InverseString.new(gets.chomp)

puts inverse_object