class Array
	def reverse_iterate
		new_array = self.reverse
		new_array.each do |i|
			yield i
		end
	end
end
