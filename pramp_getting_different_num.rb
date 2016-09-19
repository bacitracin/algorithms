# Given an array arr of n unique non-negative integers, how can you most efficiently find a non-negative integer that is not in the array?

# Your solution should return such an integer or null if arr contains all possible integers.
# Analyze the runtime and space complexity of your solution.

# Example array [1, 500, 6, 20, 5, 8]
# Nums are non-negative, unique, this n = 6
# Example output 2

# First approach create random numbers and compare

def generate_diff_num_randomly(array)
  random_number = 0;
  # Have to go though n items every time...
  until !array.include?(random_number)
    random_number = rand(0..(array.size + 1))
  end

  random_number
end

def generate_diff_num_add_one(array)
  array_max = array.max
  array_max + 1
end