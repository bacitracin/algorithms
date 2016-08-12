def versionFunction(version1, version2) # these are strings
  
  version_1_array = version1.split(".") # will look like this ["1", "13", "4"]
  version_2_array = version2.split(".")
  
  parsed_list_1 = [] 
  parsed_list_2 = []

  version_1_array.each do |number|
    parsed_list_1 << number.to_i
  end # will look like [1, 13, 4]

  version_2_array.each do |number|
    parsed_list_2 << number.to_i
  end # will look like [1, 13, 4]


  for number_1 in parsed_list_1
    for number_2 in parsed_list_2
      if number_1 > number_2
        1
      elsif number_1 < number_2
        -1
      else
        0
      end
    end
  end

end