# bubble sort

def bubble_sort(array)

  n = array.length
  loop do
  
    swap = false

    (n - 1).times do |num|
      if array[num] > array[num + 1]
        array[num], array[num + 1] = array[num + 1], array[num]
        swap = true
      end
    end

    break if swap == false
  end

  array
end