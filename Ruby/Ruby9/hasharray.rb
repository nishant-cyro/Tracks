class HashArray
  def initialize(array)
    @hash = Hash[]
    @array = array
  end

  def make_hash
    @array.each do |element|
      if @hash.has_key?(element.size)
        value_array = @hash.fetch(element.to_s.size)
        value_array << element
      else
        @hash[element.to_s.length] = Array[element]
      end 
    end
  puts @hash
  end
end
