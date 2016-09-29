# Given two sorted array of integers, return a merged single sorted array. 

# Input: Two Sorted Arrays of Integers
# Output: One Sorted Array of integers
# Example
# Input: [1,5,10], [2,3,12,15]     => Output: [1,2,3,5,10,12,15]
# Input: [1,2,3], [4,5,6]   =>  Output: [1,2,3,4,5,6]
# Constraints Time Complexity: O(n+m) Auxiliary Space Complexity: O(n+m)
# Numbers can range from very large negative values to very large positive values.

def merge_two_arrays(arr1, arr2)

  # create two index pointer variables & results array
  i = 0
  j = 0
  results_array = []

  while i != arr1.length - 1 && j != arr2.length - 1
    if arr1[i] < arr2[j]
      results_array.push(arr[i])
      i += 1
    else 
      results_array.push(arr[j])
      j += 1
    end
  end

  if ((i == arr1.length - 1) && (j == arr2.length - 1)
    return results_array
  elsif (i == arr1.length - 1)
    results_array.push(arr2[j..-1])
  else
    results_array.push(arr1[i..-1])
  end 

  return results_array

end