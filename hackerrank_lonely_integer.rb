# 1 of 3 HR challenges for LaunchCode
# print out the number from the array that is lonely
# Ex [1, 1, 2, 33, 33] => 2


def  lonelyInteger( arr) 
    
    element_count = Hash.new(0)
    
    arr.each do |element|
        element_count[element] += 1
    end
    
    answer_hash = element_count.select{|key| element_count[key] == 1}
    answer_hash.keys.first

end
