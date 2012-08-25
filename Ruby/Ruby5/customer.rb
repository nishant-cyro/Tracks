class Customer

  @@ids = 0

  def initialize name, balance = 1000
    @name = name
    @@ids += 1
    @account_no = @@ids
    @balance = balance
  end
 
  def deposit(amount)
    @balance += amount
    "The new balance is #{@balance}"
  end

  def withdraw(amount)
    @balance -= amount
    "The new balance is #{@balance}"
  end

  def to_s
    "Account Name : #{@name}, Account Number : #{@account_no}, Balance : #{@balance}"
  end
end