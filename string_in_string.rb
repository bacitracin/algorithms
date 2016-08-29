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
