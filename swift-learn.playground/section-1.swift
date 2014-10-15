// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let individualScores = [75, 45, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
teamScore


var optionalString: String? = "Hello"
optionalString == nil

var optionalName: String? = "你好"
var greeting = "hello!"

if let name = optionalName {
    greeting += ", \(name)"
    optionalName
} else {
    greeting = "nobody"
}


let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber","watercress":
    let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
}

let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]

var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        println(number)
        if number > largest {
            largest = number
        }
    }
}

largest


var n = 2
while n < 100 {
    n = n * 2
}

n


var m = 2
do {
    m *= 2
} while m < 100

m


var firstForLoop = 0
for i in 0..<4 {
    firstForLoop += i
}
firstForLoop

var secondForLoop = 0
for var i = 0; i < 4; ++i {
    secondForLoop += i
}
secondForLoop

func greet(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)."
}
greet("Bob", "is time to say hello to god")

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int)   {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}

let statistics = calculateStatistics([5, 3, 100, 3, 9])
statistics.sum
statistics.1

func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    
    return sum
}

sumOf()
sumOf(42, 597, 12)

func avarageOf(numbers: Int...) -> Int {
    var avg = 0
    var i = 1
    var sum = 0
    for number in numbers {
        i++
        sum += number
    }
    return sum/i
    
}

avarageOf(42, 597, 12)

func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    
    return y
}

returnFifteen()

func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, lessThanTen)

let mappedNumbers = numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})
mappedNumbers

let mapedNumbers = numbers.map({number in 3 * number })
mapedNumbers


let sortedNumbers = sorted(numbers) { $0 > $1 }
sortedNumbers
























































