# Reverse a string and remove three letters in a row
# So "aabbbcd" => "dcaa"

def reverse_and_remove_triples(string) # "testbbbcd"
  string_array = string.chars 
  # ["t", "e", "s", "t", "b", "b", "b", "c", "d"]

  previous_letter = ""
  return_string_array = []
  triple_count = 1

  string_array.reverse do |character|
    return_string_array << character #["d"]

    triple_count += 1 if previous_letter == character

    if triple_count == 3
      return_string_array.pop(2)
      triple_count = 1
    end

    previous_letter = character
  end

  return_string_array
end 

def reverse_remove_triples(string) # "trestbbbcd"

  reverse_string_array = string.chars.reverse # ["d","c", "b", "b","b", "t","s","e","r","t"]

  (0..reverse_string_array.length-3).each do |i|
    if reverse_string_array[i] == reverse_string_array[i + 1] && reverse_string_array[i +1] == reverse_string_array[i + 2]
      reverse_string_array.shift(3)
    end
  end

  puts reverse_string_array.join("")

end