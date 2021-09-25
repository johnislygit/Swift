/*:
 ## Exercise - Return Values

 Write a function called `greeting` that takes a `String` argument called name, and returns a `String` that greets the name that was passed into the function. I.e. if you pass in "Dan" the return value might be "Hi, Dan! How are you?" Use the function and print the result.
 */
func greetings(name: String) -> String {
    return name
}
var name1 = greetings(name: "John")
print("Hi, \(name1)! How are you?")
/*:
 Write a function that takes two `Int` arguments, and returns an `Int`. The function should multiply the two arguments, add 2, then return the result. Use the function and print the result.
 */
func multiplyadd2(number1: Int, number2: Int) -> Int {
    let result = (number1*number2) + 2
    return result;
}
print(multiplyadd2(number1: 2, number2: 2))

//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Separating Functions](@next)
