// Write a function that splits an array (first argument) into groups the 
// length of size (second argument) and returns them as a two-dimensional array.

function chunkArrayInGroups(arr, size) {

  var tempArray = []; // holds values
  var count = 0;

  while (count < arr.length){
    tempArray.push(arr.slice(count, count + size)); // pushing an array to the tempArray
    count += size;
  }
  return tempArray;
}

chunkArrayInGroups(["a", "b", "c", "d"], 2); // => [["a", "b"], ["c", "d"]]


// chunkArrayInGroups([0, 1, 2, 3, 4, 5], 3) should return [[0, 1, 2], [3, 4, 5]].
// chunkArrayInGroups([0, 1, 2, 3, 4, 5], 2) should return [[0, 1], [2, 3], [4, 5]].
// chunkArrayInGroups([0, 1, 2, 3, 4, 5], 4) should return [[0, 1, 2, 3], [4, 5]].
