// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

println(str)

var myVariable = 42
myVariable = 50

let myConstant = 40

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70

var varFloat: Float = 4

let label = "The width is "
let width = 94
let widthLable =  String(width) + label


let apples = 3
let oranges = 5
let appleSummary  = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."


var name = "yongfu"
var greet = " welcome \(name) to teach us."

var array1 = ["1","2"]
array1[0]

var occupations = [
    "Malcolm":  "Captain",
    "Kaylee":   "Mechanic",
]

occupations["Jayne"] = "public Relations"

occupations


let emptyArray = [String]()
let emptyDictionary = Dictionary<String, Float>()

var shoppingList = []


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

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape"
    }
    
    let numberA = 1
    
    func nameUse() -> String {
        return "test"
    }
}


var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()

class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
}

var nameShape = NamedShape(name: "test")
nameShape.name

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}

let test = Square(sideLength: 5.2, name: "my test square")
test.area()
test.simpleDescription()


class Circle: NamedShape {
    let pi = 3.14159
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area() -> Double {
        return pi * radius * radius
    }
    
    override func simpleDescription() -> String {
        return "A \(name) with the radius of \(radius)."
    }
}


let circleTest = Circle(radius: 20, name: "circule")
circleTest.area()
circleTest.simpleDescription()


class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}

var triangle  = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
triangle.perimeter
triangle.perimeter = 10
triangle.sideLength


class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
triangleAndSquare.square.sideLength
triangleAndSquare.triangle.name
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
triangleAndSquare.triangle.sideLength


class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes times: Int) {
        count += amount * times
    }
}

var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)

let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
            case .Ace:
                return "ace"
            case .Jack:
                return "jack"
            case .Queen:
                return "queen"
            case .King:
                return "king"
            default:
                return String(self.toRaw())
        }
    }
}

let ace = Rank.Queen
let aceRawValue = ace.toRaw()
let aceValue = ace.simpleDescription()


enum RankNum: Int {
    case ace = 2
    case Queen, Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack,  King
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.toRaw())
        }
    }
}

func compareRank(first: Rank, second: RankNum) -> Bool {
    return first.toRaw() == second.toRaw()
}


compareRank(Rank.Six, RankNum.Two)
compareRank(Rank.Three, RankNum.Three)

enum RankString: String {
    case Ace = "ace"
    case Queen = "queen", Two = "2"
    case Jack = "jack"
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "2"
        default:
            return String(toRaw())
        }
    }
}

RankString.Queen.toRaw()

if let convertedRank = RankNum.fromRaw(2) {
    let threeDescription = convertedRank.simpleDescription()
}



enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    func color() -> String {
        switch self {
        case .Spades:
            return "black"
        case .Hearts:
            return "red"
        case .Diamonds:
            return "red"
        case .Clubs:
            return "black"
        }
    }
}
let hearts = Suit.Hearts
var heartsDescription = hearts.simpleDescription()
var heartsColor = hearts.color()

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
    static func createDeck() -> [Card] {
        var deck = [Card]()
        var suits: [Suit] = [.Hearts, .Clubs, .Diamonds, .Spades]
        
        for var i = 1; Rank.fromRaw(i) != nil; ++i {
            let rank = Rank.fromRaw(i)!
            
            for suit in suits {
                deck.append(Card(rank: rank, suit: suit))
            }
        }
        return deck
    }
}

let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

Card.createDeck()[5].simpleDescription()

var suits: [Suit] = [.Hearts, .Clubs, .Diamonds, .Spades]
suits[1].simpleDescription()

Rank.fromRaw(16)?.simpleDescription()

enum ServerResponse {
    case Result(String, String)
    case Error(String)
}

let success = ServerResponse.Result("6:00 am", "08:09 pm")
let failure = ServerResponse.Error("Out of cheese.")

switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse = "Failure... \(error)"
}

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription


enum SimpleEnum: Int, ExampleProtocol {
    case One = 1
    case Two, Three
    var simpleDescription: String {
        return "A simple enum: \(self.toRaw())"
    }
    mutating func adjust() {
        if let nextEnum = SimpleEnum.fromRaw(self.toRaw() + 1) {
            self = nextEnum
        }
    }
}

var one = SimpleEnum.One
one.adjust()
one.simpleDescription

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    
    mutating func adjust() {
        self += 42
    }
}


var i: Int = 7   // Extension integer
var s: String = i.simpleDescription   // Extension string
s = i.simpleDescription // Return value of 7

extension Double {
    var absoluteValue: Double {
        return self < 0 ? -self : self
    }
}

(-5.5).absoluteValue

let protocolValue: ExampleProtocol = a
protocolValue.simpleDescription
//protocolValue.anotherProperty




protocol ExampleProtocol1 {
    var simpleDescription1: String { get }
    mutating func adjust() -> Int
}
extension Int: ExampleProtocol1 {
    var simpleDescription1: String {
        return "The number \(self)"
    }
    mutating func adjust() -> Int {
        self += 42
        return self
    }
}
var x:Int = 7
let y:Int = x.adjust() //49











































