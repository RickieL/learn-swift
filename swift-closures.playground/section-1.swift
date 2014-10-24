// Playground - noun: a place where people can play

// import UIKit

var str = "Hello, playground"

let names = ["Chris", "Zlex", "alex", "alex", "Daniella"]

func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}

var reversed = sorted(names, backwards)
var newNames = sorted(names)
reversed = sorted(names, { (s1: String, s2: String) -> Bool in
    return s1 > s2
})

// inferring type from context
reversed = sorted(names, {s1, s2 in return s1 > s2})
reversed

// implicit returns from single-expression closures
reversed = sorted(names, {s1, s2 in s1 < s2})
reversed

// shorthand argument names
reversed = sorted(names, {$0 > $1})
reversed

// operator functions
reversed = sorted(names, >)

// trailing closures
let digitNames = [
    0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map {
    (var number) -> String in
    var output = ""
    while number > 0 {
        output = digitNames[number % 10]! + output
        number /= 10
    }
    return output
}

strings

// Capturing values
func makeIncrementor(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementor
}

let incrementByTen = makeIncrementor(forIncrement: 10)
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementor(forIncrement: 7)
incrementBySeven()
incrementByTen()

let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()








