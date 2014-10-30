// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

// stored properties
var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6

for i in 0..<rangeOfThreeItems.length {
    println(rangeOfThreeItems.firstValue+i)
}

// stored properties of constant structure instances
let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
// rangeOfFourItems.firstValue = 6
// The same is not true for classes, which are reference types. 
// If you assign an instance of a reference type to a constant, 
// you can still change that instance’s variable properties.


// lazy stored properties
class DataImporter {
    var fileName = "data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
println(manager.importer.fileName)

// stored properties and instance variables

// computed properties
struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 12.0, height: 8.0))
let initalSquareCenter = square.center
square.center = Point(x: 20.0, y: 15.0)
println("square.origin is now at (\(initalSquareCenter.x), \(initalSquareCenter.y))")

// shorthand setter declaration
struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

// read-only computed properties
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}

let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
println("the volume of the cuboid is \(fourByFiveByTwo.volume)")

// property observers
class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            println("About to set totalSteps to \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                println("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 201

// global and local variables

// type properties
struct SomeStructure {
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {
        // return Int value here
        return 40
    }
}

enum SomeEnumeration {
    static var storedTypeProperty = "Some enum Value"
    static var computedTypeProperty: Int {
        return 41
    }
}

class SomeClass {
    class var computedTypeProperty: Int {
        return 42
    }
}

// querying and setting type properties
println(SomeClass.computedTypeProperty)
println(SomeStructure.storedTypeProperty)
println(SomeEnumeration.storedTypeProperty)
SomeStructure.storedTypeProperty = "Another value."
println(SomeStructure.storedTypeProperty)

struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}

var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLevel = 7
println(leftChannel.currentLevel)
println(AudioChannel.maxInputLevelForAllChannels)

rightChannel.currentLevel = 11
println(rightChannel.currentLevel)
println(AudioChannel.maxInputLevelForAllChannels)


