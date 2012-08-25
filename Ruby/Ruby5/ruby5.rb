require_relative 'customer'

def customer_operations
  customer1 = Customer.new "Ethan", 2000
  customer2 = Customer.new "Sophie"

  puts customer1
  puts customer2

  puts customer1.deposit(1000)
  puts customer2.withdraw(500)
  puts customer1.withdraw(2000)
end

customer_operations