/** Find the number of occurances of a string within another string, character occurances do not need to be
 * in immediate sequence. i.e. There can be any number of characters between them.
 */

e.x.

println( strPos( "ababab".toList, "ab".toList ) ) // 6
println( strPos( "abababab".toList, "ab".toList ) ) // 10

ab in ababab 

ab____
a__b__
a____b
__ab__
__a__b
____ab

ab in abababab

AB______
A__B____
A____B__ 
A______B
__AB____
__A__B__
__A____B
____AB__
____A__B
______AB



# p arr.each_index.select{|i| arr[i] == 'x'} # =>[0, 2, 6]

def find_num_combos("ab", "ababab") 
   search_term_array = search_term.split("") #=> ["a", "b"]
   first_search_letter = search_term_array[0] #=> "a"
   second_search_letter = search_term_array[1] #=> "b"
   
   string_to_search_array = string_to_search.split("") # => ["a", "b", "a", "b", "a", "b"]
   
   # brute - loop over each part of the array, check the letter
   #if the letter is the first letter we're searching for, continue on, otherwise move on to next
   
   full_search_term_counter = 0
   string_to_search_array.each_with_index { |letter, index|
      
       if letter == first_search_letter 
         string_to_search_array[ index+1..-1 ].each{ |letter|
             full_search_term_counter += 1 if letter == second_search_letter
         
                     
         
         }

       end
       
   }
   