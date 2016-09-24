# Write a program that prints the numbers from 1 to 100. 
# For multiples of three print “Fizz” instead of the number 
# and for multiples of five print “Buzz”. For numbers which are 
# multiples of both three and five print “FizzBuzz”

# Add on to an empty string, won't have to dupe
# 
def fizzbuzz_string()  
  (1..100).each do |num|
    return_string = ""
    return_string += "Fizz" if num % 3 == 0
    return_string += "Buzz" if num % 5 == 0
    # return_string = num if return_string == ""
    # puts return_string
    puts (return_string.empty? ? num : return_string)
  end
end

# If else statements. Checking % 15 first is important
# Too many checks , Uses puts too many times
def fizzbuzz_if()
  for num in (1..100)
    if num % 15 == 0 
      response = "FizzBuzz"
    elsif num % 5 == 0
      response = "Buzz"
    elsif num % 3 == 0
      response = "Fizz"
    else
      response = num
    end
    puts response
  end
end

def fizzbuzz_case()
  (1..100).each do |num|
    div3 = num.modulo(3) == 0
    div5 = num.modulo(5) == 0

    puts case
      when (div3 && div5) then "FizzBuzz"
      when (div3) then "Fizz"
      when (div5) then "Buzz"
      else num      
    end
  end
end

