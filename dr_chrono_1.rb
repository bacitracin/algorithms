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
  stop_index = pattern_size
  puts stop_index
  end_index = input_string_size - pattern_size 
  matches = 0

  for index in (0..end_index)
    puts input_string[index, stop_index]
    if input_string[index, stop_index] =~ regex_search
      matches += 1
    end
    puts index
    puts matches
    input_string[index, stop_index]
  end

  puts matches
  
end


count_matches("20 4", "ABCDDDDABCDABCDDCCCB", "AB*D")
# 0, 3
# 1, 4
# 2, 5
