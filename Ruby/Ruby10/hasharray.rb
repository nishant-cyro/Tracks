class HashArray

  def initialize(array)
    @hash = Hash.new
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
  end



  def sort_hash
    make_hash
    @hash = @hash.sort.inject({'odd' => [], 'even' => []}) do |hash, (key,value)|
      if key % 2 == 0
        type = 'even'
      else
        type = 'odd'
      end
      hash[type] << value
      hash
    end
    return @hash
  end
end