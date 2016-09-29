# Similar to Version Problem

# Given a positive integer represented by an array of digits, add one that number.
# Input: Array of integers Output: Array of integers

# Example
# Input: [1,2,3]        =>  Output: [1,2,4]
# Input: [1, 9]   =>  Output: [2,0]
# Constraints Time Complexity: O(N) Auxiliary Space Complexity: O(1)
# Values will be integers

def plus_one(integer_array)

  # 1. set counter, scope variables
  index_counter = -1
  result_array = integer_array

  # 3. helper method
  increment_one = lambda do |result_array|
    # 4. base case
    if result_array[index_counter] != 9
      result_array[index_counter] += 1
      return result_array
    end
    # 5. recursive
    result_array[index_counter] = 0
    index_counter = index_counter - 1
    #. invoke helper method
    increment_one.call
  end

  increment_one.call(integer_array)
  # 2. return result
  return result_array

end