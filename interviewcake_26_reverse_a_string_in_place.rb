test_string = "Tracy"

# start at the ends and swap the characters, moving toward the middle
def reverse_string_in_place(string)
  left_counter = 0
  right_counter = string.length - 1

  while left_counter < right_counter

    string[left_counter], string[right_counter] = \
      string[right_counter], string[left_counter]

      left_counter += 1
      right_counter -= 1
    end

    return string

end
