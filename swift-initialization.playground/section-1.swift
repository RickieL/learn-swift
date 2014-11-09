// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// setting initial values for stored properties
// initializers
struct Fahrenheit {
    var temperature: Double
    init() {
        // perform some initialization here
        temperature = 32.0
    }
}

var f = Fahrenheit()
println("The default temperature is \(f.temperature)° Fahrenheit")

struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    init(_ celsius: Double) {
        temperatureInCelsius = celsius
    }
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
let bodyTemperature = Celsius(37.5)

struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white: Double) {
        red = white
        green = white
        blue = white
    }
}

let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)

// optional property types
class SurveyQuestion {
    var text: String
    let text2: String
    class var text3: String {
        return "test"
    }
    var response: String?
    init(text: String) {
        self.text = text
        self.text2 = text
    }
    func ask() {
        println(text2)
    }
}

let cheeseQuestion = SurveyQuestion(text: "Do you like cheese?")
cheeseQuestion.ask()
cheeseQuestion.response = "Yes, I do like cheese."
println(cheeseQuestion.text)
println(cheeseQuestion.text2)

let beetsQuestion = SurveyQuestion(text: "How about beets?")
beetsQuestion.ask()
// prints "How about beets?"
beetsQuestion.response = "I also like beets. (But not with cheese.)"
println(SurveyQuestion.text3)
println(cheeseQuestion.text2)

// Modifying Constant Properties During Initialization

// default initializers
class ShoppingListItem1 {
    var name: String?
    var quntity = 1
    var purchased = false
}

var item = ShoppingListItem1()

// memberwise initializers for structure types
struct Size {
    var width = 0.0, height = 0.0
}
let twoByTwo = Size(width: 2.0, height: 2.0)

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size   = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}
let basicRect = Rect()
let originRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))

// class inheritance and initialization

// initializer delegation for class types

// initializer inheritance and overriding
class Vehicle {
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) wheels"
    }
}

let vehicle = Vehicle()
vehicle.numberOfWheels = 3
println("Vehicle: \(vehicle.description)")


class Bicycle: Vehicle {
    var gear = 1
    override init() {
        super.init()
        numberOfWheels = 2
    }
    
}

let bicycle = Bicycle()
bicycle.gear = 2
println("Bicycle: \(bicycle.description)")

// automatic initializer inheritance

// designated and convenience initializers in action

class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}
let namedMeat = Food(name: "Bacon")
let mysteryMeat = Food()

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

let oneMysteryItem = RecipeIngredient()
let oneBacon = RecipeIngredient(name: "Bacon")
let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)

class ShoppingListItem: RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) x \(name)"
        output += purchased ? " ✔" : " ✘"
        return output
    }
}

var breakfastList = [
    ShoppingListItem(),
    ShoppingListItem(name: "Bacon"),
    ShoppingListItem(name: "Eggs", quantity: 6),
]
breakfastList[0].name = "Orange juice"
breakfastList[0].purchased = true
for item in breakfastList {
    println(item.description)
}

// Failable initializers
struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}

let someCreature = Animal(species: "Giraffe")
if let giraffe = someCreature {
    println("An animal was initialized with a species of \(giraffe.species)")
}

let anonymousCreature = Animal(species: "")
if anonymousCreature == nil {
    println("The anonymous creature could not be initialized")
}

// failable initializers for enumerations
enum TemperatureUnit {
    case Kelvin, Celsius, Fahrenheit
    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = .Kelvin
        case "C":
            self = .Celsius
        case "F":
            self = .Fahrenheit
        default:
            return nil
        }
    }
}

let fahrenheitUnit = TemperatureUnit(symbol: "F")
if fahrenheitUnit != nil {
    println("This is a defined temperature unit, so initialization succeeded.")
}

let unknowUnit = TemperatureUnit(symbol: "X")
if unknowUnit == nil {
    println("This is not a defined temperature unit, so initialization failed")
}

// failable initializers for Enumerations with row values
/*
enum TemperatureUnit: Character {
case Kelvin = "K", Celsius = "C", Fahrenheit = "F"
}

let fahrenheitUnit = TemperatureUnit(rawValue: "F")
if fahrenheitUnit != nil {
println("This is a defined temperature unit, so initialization succeeded.")
}
// prints "This is a defined temperature unit, so initialization succeeded."

let unknownUnit = TemperatureUnit(rawValue: "X")
if unknownUnit == nil {
println("This is not a defined temperature unit, so initialization failed.")
}
// prints "This is not a defined temperature unit, so initialization failed."

*/

// failable initializers for classes
class Product {
    let name: String!
    init?(name: String) {
        if name.isEmpty {return nil}
        self.name = name
    }
}

if let bowTie = Product(name: "bow tie") {
    // no need to check if bowTie.name == nil
    println("The product's name is \(bowTie.name)")
}

// propagation of initialization failure
class CartItem: Product {
    let quantity: Int!
    init?(name: String, quantity: Int) {
        super.init(name: name)
        if quantity < 1 { return nil }
        self.quantity = quantity
    }
}

if let twoSocks = CartItem(name: "sock", quantity: 2) {
    println("Item: \(twoSocks.name), quantity: \(twoSocks.quantity)")
} else {
    println("Unable to initialize zero shirts")
}

if let zeroShirts = CartItem(name: "shirt", quantity: 0) {
    println("Item: \(zeroShirts.name), quantity: \(zeroShirts.quantity)")
} else {
    println("Unable to initialize zero shirts")
}


// override a failable initializer
class Document {
    var name: String?
    init() {}
    init?(name: String) {
        if name.isEmpty { return nil }
        self.name = name
    }
}

class AutomaticalNamedDocument: Document {
    override init() {
        super.init()
        self.name = "[Untitled]"
    }
    override init(name: String) {
        super.init()
        if name.isEmpty {
            self.name = "[Untitled]"
        } else {
            self.name = name
        }
    }
}

// the init! failable initializer

// required initializers
// Write the required modifier before the definition of a class initializer to indicate that every subclass of the class must implement that initializer:
class SomeClass {
    required init() {
        // initializer implementation goes here
    }
}

class SomeSubclass: SomeClass {
    required init() {
        // subclass implementation of the required initializer goes here
    }
}

// setting a default property value with a closure or function
struct Checkerboard {
    let boardColor: [Bool] = {
        var temporaryBoard = [Bool]()
        var isBlack = false
        for i in 1...10 {
            for j in 1...10 {
                temporaryBoard.append(isBlack)
                isBlack = !isBlack
            }
            isBlack = !isBlack
        }
        return temporaryBoard
    }()
    func squareIsBlackAtRow(row: Int, column: Int) -> Bool {
        return boardColor[(row * 10) + column]
    }
}

let board = Checkerboard()
println(board.squareIsBlackAtRow(0, column: 1))
println(board.squareIsBlackAtRow(9, column: 9))


