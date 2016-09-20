// Repeat a given string (first argument) num times (second argument). 
// Return an empty string if num is not a positive number.

function repeatStringNumTimes(str, num) {
  var returnString = "";

  while (num > 0) {
    returnString += str;
    num --;
  }

  return returnString
}

repeatStringNumTimes("abc", 3);

// repeatStringNumTimes("*", 3) should return "***".
// repeatStringNumTimes("abc", 1) should return "abc".

def repeat_string_num_times(str, num)

  return_string = ""

  (1..num).each do |n|
    return_string += str
  end

  return_string
  
end
