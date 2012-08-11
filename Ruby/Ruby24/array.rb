class Array
	def reverse_iterate
		i = self.length - 1
		while i >= 0
			yield self[i]
			i -= 1
		end
	end
end
