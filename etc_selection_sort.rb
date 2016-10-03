# Selection Sort

def selection_sort(input)

  n = input.length

  for first_num in 0...n
    min_value = first_num
    for following_num in (first_num + 1)...n
      if input[following_num] < input[min_value]
        input[following_num], input[min_value] = input[min_value], input[following_num]
      end
    end
  end

  input

end
