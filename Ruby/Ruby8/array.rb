class Array

  def calPower(power)
	@array.collect! do |element|
		element **=  power
		element
	end
  end
end