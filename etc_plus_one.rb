# Similar to Version Problem

# Given a positive integer represented by an array of digits, add one that number.
# Input: Array of integers Output: Array of integers

# Example
# Input: [1,2,3]        =>  Output: [1,2,4]
# Input: [1, 9]   =>  Output: [2,0]
# Constraints Time Complexity: O(N) Auxiliary Space Complexity: O(1)
# Values will be integers

def plus_one(integer_array)

  index = integer_array.length - 1 # Last index

  while integer_array[index] == 9
    integer_array[index] = 0

    if index == 0
      integer_array.unshift(1)
      return integer_array
    end
    index -= 1
  end

  integer_array[index] += 1
  return integer_array

end





