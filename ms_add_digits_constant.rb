# Given a non-negative integer num, repeatedly add all its digits until the result has only one digit.

# For example: Given num = 38, the process is like: 3 + 8 = 11, 1 + 1 = 2. 
# Since 2 has only one digit, return it.

# Important that it's already a non-negative input

def add_digits(num) # 38
  converted_num = num.to_s.split("") # ["3", "8"]
  num_sum = 0

  converted_num.each do |num|
    num_sum += num.to_i # don't forget the string needs to be converted 
  end

  num_sum

end