# Ruby version

def find_dupes(arr)

  dupes_list = arr.select{|num| arr.count(num) > 1}
  dupes_list.uniq

end


# JS 

function findDupes(arr)
  var dict = {}
  var dupes_list= [];

  for (var i = 0; i < arr.length; i++){
    var val = arr[i];
    if (dict[val]){
      dupes_list.push(val);
      }
    }
    else {
      dict[val] 1;
    }
  return dupes_list;
}