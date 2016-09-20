# Return the lowest index at which a value 
# (second argument) should be inserted into an 
# array (first argument) once it has been sorted. 
# The returned value should be a number.

# For example, getIndexToIns([1,2,3,4], 1.5) should 
# return 1 because it is greater than 1 (index 0), 
# but less than 2 (index 1).

def get_index_to_ins(arr, value)
  arr << value
  arr.sort.index(value)
end