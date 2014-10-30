// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// instance methods
class Counter {
    var count = 0
    func increment() {
        count++
    }
    func incrementBy(amount: Int) {
        count += amount
    }
    func reset() {
        count = 0
    }
}

var counter = Counter()
counter.increment()
counter.incrementBy(5)
counter.reset()

// local and external parameter names for methods
// methods are just functions that are associated with a type
class CounterNew {
    var count = 0
    func increment() {
        // the self property
        self.count++
    }
    func incrementBy(amount: Int, test numberOfTimes: Int) {
        count += amount * numberOfTimes
    }
    func reset() {
        count = 0
    }
}

let counterNew = CounterNew()
counterNew.incrementBy(5, test: 3)
println(counterNew.count)

// modifying external parameter name behavior for methods
// Conversely, if you do not want to provide an external name for the second or subsequent parameter of a method, override the default behavior by using an underscore character (_) as an explicit external parameter name for that parameter.


// the self property

struct Point {
    var x = 0.0, y = 0.0
    func isToRightOfX(x: Double) -> Bool {
        return self.x > x
    }
    mutating func moveByX(deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}
var somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToRightOfX(1.0) {
    println("This point is to the right of the line where x == 1.0")
}

// Modifying value types from within instance methods
somePoint.moveByX(1.0 , y: 2.0)

enum TriStatSwitch {
    case Off, Low, High
    mutating func next() {
        switch self {
        case Off:
            self = Low
        case Low:
            self = High
        case High:
            self = Off
        }
    }
}

var ovenLight = TriStatSwitch.Low
ovenLight.next()
ovenLight.self == TriStatSwitch.Off





// type methods

