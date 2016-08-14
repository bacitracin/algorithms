// Return true if the given string is a palindrome. Otherwise, return false.
// Should work for capitals & strange numbers & characters

function palindrome(str) {
  return str.replace(/[\W_]/g, '').toLowerCase() ===
         str.replace(/[\W_]/g, '').toLowerCase().split('').reverse().join('');
}

palindrome("eye");