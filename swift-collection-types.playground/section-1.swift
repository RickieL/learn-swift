// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var shoppingList: [String] = ["Eggs", "Milk"]
println("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty {
    println("The shopping list is empty")
} else {
    println("The shopping list has \(shoppingList.count) items.")
}

shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
shoppingList.count
shoppingList[4...6] = ["Bananas", "Apples"]
shoppingList.count

shoppingList.insert("Maple Syrup", atIndex: 1)
shoppingList

let mapleSyrup = shoppingList.removeAtIndex(1)

for (index, value) in enumerate(shoppingList) {
    println("Item \(index + 1) is \(value).")
}

var someInts = [Int]()
println("someInts is of type [Int} with \(someInts.count) items.")
someInts.append(3)
someInts = []
var threeDoubles = [Double](count: 3, repeatedValue: 0.0)
var anotherThreeDoubles = [Double](count: 3, repeatedValue: 2.5)

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
airports.startIndex
airports["LHR"] = "London"

airports["LHR"] = "London Heathrow"
airports

airports["APL"] = "Apple International"
airports["APL"] = nil
airports

var airportsOther: [String: Dictionary] = ["YON": airports]
