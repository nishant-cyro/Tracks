class PrimeNumbers
  attr_reader :flag

  def initialize(limit)
    raise "Negative limit" if limit.to_i < 2
    @all_numbers = (2..limit.to_i)
    @prime_numbers = []
    @flag = true

    rescue
    puts "Limit can't be less than 2"
    @flag = false
  end

  def find_primes
    @all_numbers.step(1) do |number| 
      finding_primes(number)
    end
    puts @prime_numbers
  end

  def finding_primes(number)
    flag = false
    @prime_numbers.each do |found_prime|
      if (number%found_prime).zero?
        flag = true
        break
      end
    end
    if flag == false
      @prime_numbers << number
    end
  end
end