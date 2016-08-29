# DNA LENGTH

# Difficulty: Easy

# Question:
# Given a string, find the longest length of DNA sequence inside it, 
# where DNA is made up of A, C, T, and G characters. 

# For example, in the string “NZCVNASFAHOSDFHNASDAGTCGATCGKJASLSFJ", 
# the longest DNA substring is AGTCGATCG, which is 9 characters long. 
# You should write a function which takes in a string and outputs an integer.

def longest_dna_sequence(string)
  max_sequence_length = 0 # Running counter of the longest sequence 
  current_sequence_length = 0 # Another counter counting up the current length of the DNA substring as you iterate

  string_array = string.split("")

  for character in string_array
    if "agtc".include?(character)
      current_sequence_length += 1
      if current_sequence_length > max_sequence_length
        max_sequence_length = current_sequence_length
      end
    else
      current_sequence_length = 0 #reset
    end
  end

  return max_sequence_length

end
