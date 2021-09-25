/*:
 ## Exercise - Type Casting and Inspection
 
 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var collection: [Any] = [3,5.5,true,"dog"]

/*:
 Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 */
for index in collection {
    if index is Int {
        print("The integer has a value of \(index)")
    }
    if index is Double {
        print("The double has a value of \(index)")
    }
    if index is String {
        print("The string has a value of \(index)")
    }
    if index is Bool {
        print("The boolean has a value of \(index)")
    }
}

/*:
 Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 */
var Dictionary: [String:Any] = ["1":5,"2":3.2, "3":6, "4":4.1, "5":"Frank", "6":"Lexi", "7":true, "8":false]
for (key, value) in Dictionary{
    print("Key = \(key) and Value = \(value)")
}

/*:
 Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
 */
var total: Double = 0 //I couldn't figure this out
for (key , value) in Dictionary {
    if value is Int {
        total += value as! Double
    }
    if value is Double {
        total += value as! Double
    }
    if value is String {
        total += 1
    }
    if value is Bool {
        if value as! Bool == true {
            total += 3
        }
        else {
            total -= 3
        }
    }
}
print(total)
/*:
 Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
 */
var total2: Double = 0 //I couldn't figure this out
for (_  , value) in Dictionary {
    if value is Int {
        total += value as! Double
    }
    if value is Double {
        total += value as! Double
    }
    if value is String {
        total += value as! Double 
    }
    if value is Bool {
        continue
    }
}
print(total)

//: page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
