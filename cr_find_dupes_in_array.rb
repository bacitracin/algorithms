def find_dupes(arr)

  dupes_list = arr.select{|num| arr.count(num) > 1}
  dupes_list.uniq

end