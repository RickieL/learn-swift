// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let base = 5
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
}

answer

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    println("Hello, \(name)!")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    println("\(animalName)s have \(legCount) legs")
}

for character in "Hello" {
    print("\(character) ")
}

var index: Int
for index = 0; index < 3; ++index {
    println("index is \(index)")
}

println("The loop statements were excuted \(index) times.")
