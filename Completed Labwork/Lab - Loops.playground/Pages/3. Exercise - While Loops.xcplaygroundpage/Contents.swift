import Foundation
/*:
 ## Exercise - While Loops
 
 Create a while loop that simulates rolling a 6-sided dice repeatedly until a 1 is rolled. After each roll, print the value. (Hint: use `Int.random(in: 1...6)` to generate a random number between 1 and 6).
 */
var roll = Int.random(in: 1...6)
if roll == 1 { //accounts for the first roll being 1
    print(roll)
}
else {
    while roll != 1 { //rerolls until 1 is hit
        print(roll)
        roll = Int.random(in: 1...6)
        }
    if roll == 1 { //prints 1 on exit since it won't be printed in the loop
        print(roll)
    }
}
//: [Previous](@previous)  |  page 3 of 6  |  [Next: App Exercise - While Loops](@next)
