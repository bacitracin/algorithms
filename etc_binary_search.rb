# Trying to implement binary search on my own
# Array is sorted

def binary_search(array, search_item)

  start_index = 0
  end_index = array.length - 1
  middle_index = (end_index + start_index)/2

  return "#{search_item} ain't here" if !array.include?(search_item)

  while array[middle_index] != search_item
    if array[middle_index] < search_item
      start_index = middle_index + 1
      middle_index = (end_index + start_index)/2
    elsif array[middle_index] > search_item
      end_index = middle_index - 1
      middle_index = (end_index + start_index)/2
    end
  end

  return "#{search_item} is at index #{middle_index}."

end
