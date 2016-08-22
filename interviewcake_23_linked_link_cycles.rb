def contains_cycle(head)

  slow_runner = head #start them both at the head
  fast_runner = head

  while fast_runner != nil && fast_runner.next != nil 
    slow_runner = slow_runner.next 
    fast_runner = fast_runner.next.next

    if fast_runner == slow_runner
      return true
    end

    return false
end