require_relative 'shoppinglist'


shopping_list = ShoppingList.new
shopping_list.item{ |i| i.name('T'); i.quantity(3)}
shopping_list.item{ |i| i.name('Alfred'); i.quantity(15)}
puts shopping_list