def recursive_fibonacci(int)

  # 1. Scope variables
  result = 1

  # 3. Helper method with lambda
  fib = lambda do |num|

    # 4. Base cases are 0 and 1
    if num == 1 || num == 0
      return num
    else
      # 5. Recursive case
      result = fib[num - 1] + fib[num - 2]
    end
  end

  # 3.b invoke helper with initial input parameter
  fib.call(int)

  # 2. Return result
  return result

end