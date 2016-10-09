class Node

  attr_accessor :value, :next

  def initialize(value=nil)
    @value = value
    @next = nil
  end

end

class LinkedList

  attr_accessor :length, :head, :tail

  def initialize # initialize empty
    @head = nil
    @tail = nil
    @length = 0
  end

  # Starts empty
  def append(value)

    #starting empty
    if @head == nil
      @head = Node.new(value)
      @tail = @head
    else
      @tail.next = Node.new(value)
      @tail = @tail.next
    end
    @length += 1

  end

  def insert(value, index)
    current_node = @head

    while current_node != nil

      if current_node.value == index
        reference_node = current_node.next
        current_node.next = Node.new(value)
        current_node.next.next = reference_node


        # when value is the tail
        if reference_node == nil
          @tail = current_node.next
        end
        @length += 1

      end
    # exiting the while loop means index value wasn't found  
    current_node = current_node.next

  end

  def remove(index)


    # linkedlist has 1 element/ index == 0
    if (index == 0 && @length == 0)
      @head = nil
      @tail = nil
      @length -= 1
      return
    # LL has more than 1 element, but index is still 0
    else  
      @head = @head.next
      @length -= 1
      return
    current_node = @head
    counter = 0

    while current_node != nil
      # Remove last element of linkedlist
      if (counter == index-1 && work.next != nil && work.next == @tail)
        current_node.next = current_node.next.next
        @tail = current_node
        @length -= 1
        return
        # when removing nodes that aren't head/tail
      elsif (counter == location-1 && current_node.next != nil)
        current_node.next = current_node.next.next
        @length -= 1
        return
      end
        
      counter += 1
      current_node = current_node.next

      #error if index is out of the linked list range
  end

  def contains(value)
    current_node = @head

    while current_node != nil 
      if current_node.value == value
        return true
      end
      current_node = current_node.next # move to next node
    end
    return false
  end

end