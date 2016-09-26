# anagram_palindrome?
# Write a function which accepts a word, and returns true or 
# false if there exists some anagram of that word that is a palindrome.

def anagram_palindrome?(word)
  ## loop through the word and add to my hash, keep track of count    mentions { :c => 2, :a => 2, ....}
  ## at the end, check that every key's value is even 
  ## if one is odd, make sure there's only one letter that has odd value
  
  letter_count = Hash.new(0)
  
  word.each_char do |c|
    letter_count[c] += 1
  end
  
  #check that at most 1 letter has odd value
  letter_count.values.count { |value| value.odd? } > 1? false:true
  
end

p anagram_palindrome?("carrace") ## true
p anagram_palindrome?("cutoo") ## false
