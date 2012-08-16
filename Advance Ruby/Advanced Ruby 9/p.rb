module Hi
	def hell
		puts "hell"
	end
end


class Hello

	include Hi

	def hello
		puts "hello"
	end

	def bye
		puts "bye"
	end

end

h = Hello.new
