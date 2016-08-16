// Remove all falsy values from an array.

// Falsy values in JavaScript are false, null, 0, "", undefined, and NaN.

function bouncer(arr) {
  function isTruthy(arg){
    return Boolean(arg);
  }
  var filteredArray = arr.filter(isTruthy); // filter() requires a callback
  return filteredArray;
}

bouncer([7, "ate", "", false, 9]);
// bouncer([7, "ate", "", false, 9]) should return [7, "ate", 9].
// bouncer(["a", "b", "c"]) should return ["a", "b", "c"].
// bouncer([false, null, 0, NaN, undefined, ""]) should return [].
// bouncer([1, null, NaN, 2, undefined]) should return [1, 2].
