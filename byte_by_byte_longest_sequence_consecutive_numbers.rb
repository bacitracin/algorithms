# Given an unsorted array, find the length of the 
#longest sequence of consecutive numbers in the array.

# consecutive([4, 2, 1, 6, 5]) = 3  [4, 5, 6]

# Input: array of integer
# Output: A single integer indicating the longest sequence of 
# consecutive numbers

def longest_consecutive_sequence(input_array) #[ 4, 2, 1, 6, 5]

  input_array.sort! # [1, 2, 4, 5, 6]
  max_length = 0

  (0..input_array.length - 2).each do |num|
    consecutive_max = 1
    while input_array[num + 1] == input_array[num] + 1
      consecutive_max += 1
      num += 1 # Was forgetting this part originally
      if consecutive_max > max_length
        max_length = consecutive_max
      end
    end
  end

  return max_length # 3 

end