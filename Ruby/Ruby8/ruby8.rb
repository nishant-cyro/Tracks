class ArrayPower
	
	def initialize(array)
		@array = array
	end

	def calPower(power)
		@array.collect! do |element|
			element **=  power
			element
		end
	end
end

array = ArrayPower.new([1, 5, 8, 45, 89])
puts array.calPower(2)