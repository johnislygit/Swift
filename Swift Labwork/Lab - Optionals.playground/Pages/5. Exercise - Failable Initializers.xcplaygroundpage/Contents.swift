/*:
 ## Exercise - Failable Initializers
 
 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2017.
 */
struct Computer {
    var ram: Int
    var yearManufactured: Int
    
    init? (ramNumber: Int, yearManufacturedIn: Int){
        if (ramNumber > 0  && (yearManufacturedIn >= 1970 && yearManufacturedIn < 2017)) {
            self.ram = ramNumber
            self.yearManufactured = yearManufacturedIn
        }
        else {
            return nil
        }
    }
}

/*:
 Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
 */
var test = Computer(ramNumber: 0, yearManufacturedIn: 2017)
var test1 = Computer(ramNumber: 2, yearManufacturedIn: 1995)
if let comp = test1 {
    print("This computer has \(test1?.ram) ram.")
    print("This computer was manufactured in \(test1?.yearManufactured).")
} else {
    print("This computer has the wrong amount of ram.")
    print("This computer was manufactured before 1970 or after 2017.")
}

if let comp = test {
    print("This computer has \(test?.ram) ram.")
    print("This computer was manufactured in \(test?.yearManufactured).")
} else {
    print("This computer has the wrong amount of ram.")
    print("This computer was manufactured before 1970 or after 2017.")
}
//: [Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
