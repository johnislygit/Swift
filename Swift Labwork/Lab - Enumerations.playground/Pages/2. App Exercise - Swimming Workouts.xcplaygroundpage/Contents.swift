/*:
 ## App Exercise - Swimming Workouts

 >These exercises reinforce Swift concepts in the context of a fitness tracking app.

 Previous app exercises have introduced the idea that your fitness tracking app may allow users to track swimming workouts. Create a `SwimmingWorkout` struct below with properties for `distance`, `time`, and `stroke`. `distance` and `time` should be of type `Double` and will represent distance in meters and time in seconds, and `stroke` should be of type `String`.
 */
struct SwimmingWorkout {
    var distance: Double
    var time: Double
    var stroke: Stroke
    
    init(distance: Double, time: Double, stroke: Stroke) {
        self.distance = distance
        self.time = time
        self.stroke = stroke
    }
    
    static var freestyleWorkouts = [SwimmingWorkout]()
    static var butterflyWorkouts = [SwimmingWorkout]()
    static var backstrokeWorkouts = [SwimmingWorkout]()
    static var breaststrokeWorkouts = [SwimmingWorkout]()

    enum Stroke {
        case freestyle,butterfly,backstroke,breaststroke
    }
    
    func save() {
       switch stroke {
        case .freestyle:
            SwimmingWorkout.freestyleWorkouts += [self]
        case .butterfly:
            SwimmingWorkout.butterflyWorkouts += [self]
        case .backstroke:
            SwimmingWorkout.backstrokeWorkouts += [self]
        case .breaststroke:
            SwimmingWorkout.breaststrokeWorkouts += [self]
        }
    }
}

/*:
 Allowing `stroke` to be of type `String` isn't very type-safe. Inside the `SwimmingWorkout` struct, create an enum called `Stroke` that has cases for `freestyle`, `butterfly`, `backstroke`, and `breaststroke`. Change the type of `stroke` from `String` to `Stroke`. Create two instances of `SwimmingWorkout` objects.
 */
var swim1: SwimmingWorkout = SwimmingWorkout(distance: 250, time: 80, stroke: .freestyle)
var swim2: SwimmingWorkout = SwimmingWorkout(distance: 300, time: 90, stroke: .freestyle)
/*:
 Now imagine you want to log swimming workouts separately based on the swimming stroke. You might use arrays as static variables on `SwimmingWorkout` for this. Add four static variables, `freestyleWorkouts`, `butterflyWorkouts`, `backstrokeWorkouts`, and `breaststrokeWorkouts`, to `SwimmingWorkout` above. Each should be of type `[SwimmingWorkout]` and should default to empty arrays.
 */

/*:
 Now add an instance method to `SwimmingWorkout` called `save()` that takes no parameters and has no return value. This method will add its instance to the static array on `SwimmingWorkout` that corresponds to its swimming stroke. Inside `save()` write a switch statement that switches on the instance's `stroke` property, and appends `self` to the proper array. Call save on the two instances of `SwimmingWorkout` that you created above, and then print the array(s) to which they should have been added to see if your `save` method works properly.
 */
swim1.save()
swim2.save()
for workout in SwimmingWorkout.freestyleWorkouts {
    print(workout)
}

/*:

 _Copyright © 2018 Apple Inc._

 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Previous](@previous)  |  page 2 of 2
