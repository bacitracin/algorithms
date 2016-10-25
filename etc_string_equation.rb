# Create a function that takes in a string, 
# evaluates it as a mathematical expression 
# and returns the correct answer. 
# Remember the order of operations.

# "6 + 3 * 4 + 2 - 2 / 2 * 10" = 10

def string_calculator(str)

  equation_array = str.split() 
  # ["6", "+", "3", "*", "4", "+", "2", "-", "2", "/", "2", "*", "10"]

  for item in equation_array
    if item == "*" || item == "/"
      # run the function item to the left
    end
  end

end