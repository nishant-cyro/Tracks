def reversing_array
  array = [1, 2, 3, 4]
  array.reverse_iterate { |i| print "#{i} "}
end

reversing_array