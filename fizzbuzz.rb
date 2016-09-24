# Write a program that prints the numbers from 1 to 100. 
# For multiples of three print “Fizz” instead of the number 
# and for multiples of five print “Buzz”. For numbers which are 
# multiples of both three and five print “FizzBuzz”

def fizzbuzz()
  
  (1..100).each do |num|
    return_string = ""
    return_string += "Fizz" if num % 3 == 0
    return_string += "Buzz" if num % 5 == 0
    return_string = num if return_string == ""
    puts return_string
  end

end
