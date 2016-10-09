# Define a function maxLength 
# Find the length of the longest subarray where the sum of the 
# Items in the array are less than k

# Input: a is an array, k is an integer
# Output: an integer

def max_length(a, k) 
   
    qualified_subarrays_lengths = []
    
    subarrays_array = find_subarrays(a) # [[1], [2], [3], [1, 2], [1, 3], [2, 3], [1, 2, 3]]
    subarrays_arrbay.each do |subarray|
        if subarray.inject { |sum, n| sum + n } <= k
            qualified_suarrays_lengths << subarray.length 
        end
    end
    
    qualified_subarrays_lengths.max
    
end

def find_subarrays(array) #input [1, 2, 3]
    subarrays = []
    n = array.length
    
    for num in (0..n)
        subarrays += array.combination(num).to_a
    end
    
    subarrays[1..-1] # output [[1], [2], [3], [1, 2], [1, 3], [2, 3], [1, 2, 3]]
end