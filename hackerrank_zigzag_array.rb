# 1 of 3 HR challenges for LaunchCode
# Given one array create a zigzag array
# largest # first, then smallest
# then remaining members alternate between
# larger members decreasing from the largest to the smallest
# increasing form the smallest
# Array [1, 3, 6, 9, -3] becomes [9, -3, 6, 1, 3]

def wiggle_arrange_array(int_array)

  zigzag_array = []

  int_array.sort! # [-3, 1, , 6, 9]

  until int_array.empty? do
    zigzag_array << int_array.pop # [9] 
    zigzag_array << int_array.shift # [9, -3]
  end

  zigzag_array.select{|element| !element.nil? }

end