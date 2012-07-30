require_relative 'primenumbers'

def primes

  puts "Enter the limit of prime numbers"

  prime = PrimeNumbers.new(gets.chomp)
  prime.find_primes if prime.flag

end

primes