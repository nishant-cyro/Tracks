class Array

  def cal_power(power)
    self.collect do |element|
      element **=  power
      element
    end
  end
end