# https://www.interviewbit.com/problems/compare-version-numbers/
# Compare two version numbers version1 and version2.

# If version1 > version2 return 1,
# If version1 < version2 return -1, otherwise return 0.

# You may assume that the version strings are non-empty and contain only digits and the . character.
# The . character does not represent a decimal point and is used to separate number sequences.
# For instance, 2.5 is not "two and a half" or "half way to version three", it is the fifth second-level revision of the second first-level revision.

# Here is an example of version numbers ordering:
# 0.1 < 1.1 < 1.2 < 1.13 < 1.13.4

def versionFunction(version1, version2) # these are strings. version1 = "1.13.4", version2 = "1.13"
  
  version_1_array = version1.split(".") # will look like this ["1", "13", "4"]
  version_2_array = version2.split(".") # => ["1", "13"]
  
  parsed_list_1 = [] #empty
  parsed_list_2 = []

  version_1_array.each do |number|
    parsed_list_1 << number.to_i
  end # will look like [1, 13, 4]

  version_2_array.each do |number|
    parsed_list_2 << number.to_i
  end # will look like [1, 13]

  # Make the version arrays similar lengths for comparison
  # If they're the same length then move on
  
  if parsed_list_1.length > parsed_list_2.length
    until parsed_list_2.length == parsed_list_1.length do
      parsed_list_2 << 0 
    end
  elsif parsed_list_2.length > parsed_list_1.length
    until parsed_list_1.length == parsed_list_2.length do
      parsed_list_1 << 0
    end
  end
  # => parsed_list_1 = [1, 13, 4] , parsed_list_2 = [1, 13, 0]

  # Comparison
  for number_1 in parsed_list_1
    i = 0 # counter variable
    if parsed_list_1[i] > parsed_list_2[i]
      1
    elsif parsed_list_1[i] < parsed_list_2[i]
      -1
    else parsed_list_1[i] == parsed_list_2[i] && parsed_list_1[-1] == parsed_list_2[-1]
      0
    end
    i++
  end

end