/*:
 ## Exercise - Computed Properties and Property Observers
 
 The `Rectangle` struct below has two properties, one for width and one for height. Add a computed property that computes the area of the rectangle (i.e. width * height). Create an instance of `Rectangle` and print the `area` property.
 */
struct Rectangle {
    var width: Int
    var height: Int
    var area : Int {
        width * height
    }
}

var box = Rectangle(width: 2, height: 2)
print(box.area)
/*:
 In the `Height` struct below, height is represented in both inches and centimeters. However, if `heightInInches` is changed, `heightInCentimeters` should also adjust to match it. Add a `didSet` to each property that will check if the other property is what it should be, and if not, sets the proper value. If you set the value of the other property even though it already has the right value, you will end up with an infinite loop of each property setting the other.
 
 Create an instance of `Height` and then change one of its properties. Print out the other property to ensure that it was adjusted accordingly.
 */
struct Height {
    var heightInInches: Double {
        didSet {
            let tempCentimeter = heightInInches * 2.54
            if !(heightInCentimeters == tempCentimeter) {
                print("Not set properly")
                heightInCentimeters = tempCentimeter
            }
        }
    }
    
    
    var heightInCentimeters: Double {
        didSet {
            let tempInch = heightInCentimeters / 2.54
            if !(heightInInches == tempInch) {
                print("Not set properly")
                heightInInches = tempInch
            }
        }
    }
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches*2.54
    }
    
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters/2.54
    }
    
    /* set it incorrectly I created a function instead
     mutating func didSet() {
        if heightInCentimeters != (heightInInches * 2.54) {
            heightInCentimeters = heightInInches * 2.54
        }
        else if heightInInches != (heightInCentimeters / 2.54) {
            heightInInches = heightInCentimeters / 2.54
        }
    }*/
}

var test = Height(heightInInches: 100)
print(test)
test.heightInCentimeters = 200
print(test)
//: [Previous](@previous)  |  page 7 of 10  |  [Next: App Exercise - Mile Times and Congratulations](@next)
