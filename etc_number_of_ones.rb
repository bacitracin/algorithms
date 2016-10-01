# Number of Ones
# Given a sorted bit array (values of 0, and 1) determine the number of 1’s in the array.

# Input: Array of elements with values belong to the set S : { 0, 1 }
# Output: Integer
# Example
# Input: [0, 0, 0, 1, 1, 1] =>  Output: 3
# Input: [0, 0, 0, 0]   =>  Output: 0

# Constraints
# Time Complexity: O(logN) A linear search is not acceptable for runtime.
# Auxiliary Space Complexity: O(1)

# Naive solution: Going through the entire array and keeping count of ones , 
# or [0, 0, 0, 1, 1, 1].count(1) , but that's linear runtime

# Other option: Implement binary search here

def number_of_ones(input_array)
  start_index = 0
  end_index = input_array.length - 1 # 5
  middle_index = ((end_index - start_index)/ 2).round 

  until input_array[middle_index] == 1 && input_array[middle_index - 1] == 0
    if middle_index == 0 && input_array[middle_index] == 1
      return input_array.length
    elsif middle_index == input_array.length - 1
      return "There are no ones here"
    elsif input_array[middle_index] == 0 
      start_index = middle_index + 1 # from 0 to 4
    elsif input_array[middle_index] == 1 && input_array[middle_index -1] == 1
      end_index = middle_index -1
    end
    middle_index = ((end_index + start_index)/ 2).round 
  
  end

  return input_array.length - (middle_index) # 3

end