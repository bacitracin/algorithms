class Node

  attr_accessor :value, :next

  def initialize(value=nil, next=nil)
    @value = value
    @next = nil
  end

end

class LinkedList

  attr_accessor :length, :head, :tail

  def initialize(value)
    @head = Node.new(value)
    @tail = @head
    @length = 1
  end

  def append(value)
    new_node = Node.new(value)
    @tail.next = new_node
    new_node = @tail
    @length += 1
  end

  def insert(value)
  end

  def remove(value)
  end

  def contains(value)
  end


end