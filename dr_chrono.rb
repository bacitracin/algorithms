string_sizes = gets.strip # "20 4"
input_string = gets.strip # "ABCDDDDABCDABCDDCCCB"
pattern = gets.strip #"AB*D"

input_string_size = string_sizes.split()[0].to_i # 20
pattern_size = string_sizes.split()[1].to_i # 4