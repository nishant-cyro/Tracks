class ReverseString
	
  def initialize(str)
  	@str = str
  end

  def to_s
	@str.split(" ").reverse.join(" ")
  end
end