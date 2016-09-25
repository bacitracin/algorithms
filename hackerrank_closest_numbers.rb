# 1 of 3 HR challenges for LaunchCode
# Given an array of numbers, return the pairs of numbers with 
# lowest absolute value differences
# Pairs should be sorted (5, 4) prints out as 4 5

def closest_numbers(numbers) # numbers is an array
  # numbers = [4, -2, -1, 3]

  minimum_abs_difference = 1000000
  minimum_pairs = []
  minimum_set = []

  # if difference is smaller than minimum_abs_difference
  # then update

  numbers.sort! # [-2, -1, 3, 4]

  until numbers.length == 1
    larger_number = [numbers[0].abs, numbers[1].abs].max 
    smaller_number = [numbers[0].abs, numbers[1].abs].min 

    difference =  larger_number - smaller_number

    if difference <= minimum_abs_difference
      minimum_abs_difference = difference
      minimum_set << numbers[0]
      minimum_set << numbers[1]
      minimum_set.sort!
      minimum_pairs << minimum_set
      minimum_set = []
    end
      numbers.shift
  end

  minimum_pairs.each do |pair_set|
    puts pair_set[0], pair_set[1]
  end


end