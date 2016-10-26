string_sizes = gets.strip # "20 4"
input_string = gets.strip # "ABCDDDDABCDABCDDCCCB"
pattern = gets.strip #"AB*D"

def create_regex(pattern_str)
  regex_result = ''

  pattern_str.each_char do |i|
    if i == '*' 
      i = '.'
      regex_result += i
    else
      regex_result += '['
      regex_result += i
      regex_result += ']'
    end
  end

  regex_search = Regexp.new(regex_result)
  return regex_search  # /[A][B].[D]/

end

def count_matches(string_sizes, input_string, pattern)
  regex_search = create_regex(pattern) # /[A][B].[D]/

  input_string_size = string_sizes.split()[0].to_i # 20
  pattern_size = string_sizes.split()[1].to_i # 4

  stop_index = input_string_size - pattern_size 
  matches = 0

  for index in (0..stop_index)
    if regex_search.match input_string[index, index + pattern_size -1]
      matches += 1
    end
  end

  return matches
  
end



