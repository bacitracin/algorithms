# Given two strings,  and , that may or may not be of the same length, 
# determine the minimum number of character deletions required to make  
# and  anagrams. Any characters can be deleted from either of the strings.

# Sample Inputs cde , abc
# Sample Output 4

def delete_to_make_anagram(string1, string2)

  string1_hash = Hash.new(0)
  string2_hash = Hash.new(0)
  difference_hash = {}

  string1.each_char do |element|
    string1_hash[element] += 1
  end

  string2.each_char do |element|
    string2_hash[element] += 1
  end

  string1_hash.each {|k, v| result[k] = string2_hash[k] if string2_hash[k] != v }

end
