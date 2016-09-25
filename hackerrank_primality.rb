# A prime is a natural number greater than  that has no positive 
# divisors other than  and itself. Given  integers, determine the 
# primality of each integer and print whether it is Prime or Not 
# prime on a new line.

# Note: If possible, try to come up with a  primality algorithm, 
# or see what sort of optimizations you come up with for an  algorithm. 
# Be sure to check out the Editorial after submitting your code!

def is_prime?(n)

  divisors = []

  (1..n).each do |num|
    divisors << num if n % num == 0
  end

  if divisors.length <= 2
    puts 'Prime'
  else
    puts 'Not prime'
  end

end