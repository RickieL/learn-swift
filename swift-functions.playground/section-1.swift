// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func sayHello(personName: String) -> String {
    let greeting = "Hello, \(personName)"
    return greeting
}

println(sayHello("Anna"))

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for num in array[1..<array.count] {
        if num < currentMin {
            currentMin = num
        } else if num > currentMax {
            currentMax = num
        }
    }
    return (currentMin, currentMax)
}

if let bounds = minMax([8, 6, -2, 3, 18, 0]) {
    println("min is \(bounds.min) and max is \(bounds.max)")
}

func join(s1: String, s2: String, joiner: String = " ") -> String {
    return s1 + joiner + s2
}

println(join("Hello", "World",  joiner: "-"))


// variadic parameters
func arithmeticMean(numbers: Double...) -> Double {
    var sum: Double = 0
    for num in numbers {
        sum += num
    }
    let avg: Double = sum / Double(numbers.count)
    return avg
}

arithmeticMean(1, 2, 3, 18.75, 6.2)

// constant and variable parameters with default value
func alignRight(var string: String, count: Int, pad: Character = " ") -> String {
    let padCount = count - countElements(string)
    if padCount < 1 { return string }
    
    let padString = String(pad)
    for _ in 1...padCount {
        string = padString + string
    }
    return string
}

let originalString = "hello"
let paddedString = alignRight(originalString, 10, pad: "-")

// In-Out Parameters
func swapTwoInts(inout a: Int, inout b: Int) {
    let temp = a
    a = b
    b = temp
}

var a = 3
var b = 8
swapTwoInts(&a, &b)

a
b

// function type

// using function types
var newAlign: (String, Int, pad: Character) -> String = alignRight
println(newAlign(originalString, 20, pad: "a"))

let anotherNewAlign = alignRight

// function types as parameter types
func printNewAlign(newAlign: (String, Int, pad: Character) -> String, string: String, count: Int, pad: Character) {
    println("Result: \(newAlign(string, count, pad: pad))")
}

printNewAlign(alignRight, "hello", 30, "a")

// function types as return types
func stepForward(input: Int) -> Int {
    return input + 1
}

func stepBackward(input: Int) -> Int {
    return input - 1
}

func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
    return backwards ? stepBackward : stepForward
}

var currentValue = 3
let moveNearToZero = chooseStepFunction(currentValue > 0)

println("Counting to zero:")
// Counting to zero
while currentValue != 0 {
    println("\(currentValue)... ")
    currentValue = moveNearToZero(currentValue)
}

println("zero！")



// NESTED   functions



