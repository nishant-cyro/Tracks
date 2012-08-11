class ShoppingList
	def initialize
		@list = Hash.new
	end

	def create_List
		quit = 'n'

		while quit != 'y' && quit != 'Y' do
		  puts "Enter the Item Name"
		  item  = gets.chomp

		  puts "Enter the quantity of that item"
		  qty = gets.chomp

		  add_item item, qty

		  puts "Do you want to quit (y|n)"
		  quit = gets.chomp
	    end
	    print_list
	end

	def add_item item, qty
		if @list.has_key? item
			@list[item] += qty.to_i
		else
			@list[item] = qty.to_i
		end
	end

	def print_list
		puts "Shopping List"
		@list.each { |item, qty|
			puts "#{item.ljust 15, '.'} #{qty}"
		}
	end
end
