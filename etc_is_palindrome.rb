# Given a string, determine if it's a palindrome or not
# Input is a string, Output is boolean
# Things to consider: case sensitive? strange characters? 

# Pretty simple with built in Ruby reverse

def is_palindrome?(string)
  string.downcase == string.downcase.reverse
end


# Trickier without use of native Ruby methods
# Can walk through the outside edges of the string and work its way in
def is_palindrome?(string) # "racecar"
  forwards_index = 0
  backwards_index = string.length - 1
  number_checks = (string.length/2) + 1
  
  number_checks.times do |i|
    if string[forwards_index] == string[backwards_index]
      forwards_index += 1
      backwards_index -= 1
    else
      return false
    end
  end

  return true

end