// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


1 + 2
10.0 / 2

9 % 4
9 % -4
-9 % 4
8 % 2.5

var i = 0
++i
i--
i


let three = 3
let minusThree = -three
let plusThree = -minusThree

let minusSix = -6
let alsoMinusSix = +minusSix


var a = 1
a += 2
a

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

let defaultColorName = "red"
var userDefinedColorName: String?
var colorNameToUse = userDefinedColorName ?? defaultColorName

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName

for index in 1...5 {
    println("\(index) times 5 is \(index * 5)")
}

let names = ["Anna", "Alex", "Brain", "Jack"]
let count = names.count
for i in 0..<count {
    println("Person \(i + 1) is \(names[i])")
}

let allowedEntry = false
if !allowedEntry {
    println("ACCESS DENIED")
}

let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    println("Welcome!")
} else {
    println("ACCESS DENIED")
}

let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    println("Welcome!")
} else {
    println("ACCESS DENIED")
}

if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword {
    println("Welcome!")
} else {
    println("ACCESS DENIED")
}




