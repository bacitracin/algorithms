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