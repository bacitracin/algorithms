def insertion_sort(arr) # [3, 5, 2, 1]

  # loops through to the next to last item in the array
  for i in (0...arr.length) 
    temp = arr[i] # 2
    pointer = i # 2

    while (pointer > 0 && temp < arr[pointer - 1])
      arr[pointer] = arr[pointer - 1]
      pointer -= 1
    end

    arr[pointer] = temp

  end

  arr

end