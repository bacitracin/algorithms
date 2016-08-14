// Return the length of the longest word in the provided sentence.
// Your response should be a number.
// findLongestWord("The quick brown fox jumped over the lazy dog") should return 6.

function findLongestWord(str) {
  var maxLength = 0;
  var strArray = str.split(" "); // => ["The", "quick", "brown", "fox", "jumped", "over", "the", "lazy", "dog"]
  for (var i = 0; i < strArray.length; i++){
    if (strArray[i].length > maxLength){
      maxLength = strArray[i].length;
    }
  }
  return maxLength;
}

findLongestWord("The quick brown fox jumped over the lazy dog");