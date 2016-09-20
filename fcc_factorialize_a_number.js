// Return the factorial of the provided integer

function factorialize(num) {
  var total = 1;
  for (i = 1; i < num + 1; i++){
    total *= i; 
  }
  return total;
}

// Ruby version

def factorialize(num)

  total = 1
  (1..num).each do |n|
    total *= n
  end

  total

end

