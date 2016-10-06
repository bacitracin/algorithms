class MinHeap

  @storage = []

  def swap(index1, index2) # just reset
    @storage[index1], @storage[index2] = @storage[index2], @storage[index1]
  end

  def peek # gives you the smallest element
    @storage[0]
  end

  def size
    @storage.length
  end

  def insert(value)
    @storage.push(value)
    bubble_up(size() - 1)
  end

  # depending on the index being even odd/use the formulas to find the parent index
  def bubble_up
    if (index < 1)
      return
    end

    child_index = index
    parent_index 

    if child_index.even?
      parent_index = (child_index - 2) / 2
    else #odd
      parent_index = (child_index - 1) / 2
    end

    while child_index > 0 && @storage[child_index] < @storage[parent_index]
      swap(child_index, parent_index)

      if child_index.even? 
        parent_index = (child_index - 2)/2
      else
        parent_index = (child_index - 1)/2
      end

    end

  end

  def bubble_down(index)
    if index >= (size() -1)
      return
    end

    parent_index = index
    child_index1 = 2 * parent_index + 1
    child_index2 = 2 * parent_index + 2

    if child_index1 >= size() # no children
      return
    elsif child_index2 >= size() # no right child
      master_child_index = child_index1
    elsif @storage[child_index1] < @storage[child_index2]
      master_child_index = child_index1
    elsif @storage[child_index2] <= @storage[child_index1]
      master_child_index = child_index2
    end

    while (parent_index < (size() -1) && @storage[parent_index] > @storage[master_child_index])
      swap(parent_index, master_child_index)

      if child_index1 >= size() # no children
        return
      elsif child_index2 >= size() # no right child
        master_child_index = child_index1
      elsif @storage[child_index1] < @storage[child_index2]
        master_child_index = child_index1
      elsif @storage[child_index2] <= @storage[child_index1]
        master_child_index = child_index2
      end

    end

  end

  def remove_smallest # aka pop
    swap(0, size() - 1)
    to_return = @storage.pop()
    bubble_down(0)
    return to_return
  end

  def remove(index)
    swap(index, size() - 1) # swap and pop!
    to_return = @storage.pop()

    bubble_up(index)
    bubble_down(index)
    
    return to_return
  end

end