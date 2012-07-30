class HashArray

  def initialize(array)
    @array = array
  end

  def make_hash
    @hash = @array.inject({}) do |hash, element|

  	  if element.to_s.length % 2 == 0
        type = 'even'
	  else
	    type = 'odd'
	  end
	
	  if hash[type].nil?
	    hash[type] = [element]
	  else
	    hash[type] += [element]
	  end
	
	  hash
	
	end
	  return @hash
	end
end