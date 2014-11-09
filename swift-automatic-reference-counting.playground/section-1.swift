// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Person {
    let name: String
    init(name: String) {
        self.name = name
        println("\(name) is being initialized")
    }
    deinit {
        println("\(name) is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name: "John Appleseed")
reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil
reference3 = nil

/*
Xcode's Playgrounds for Swift don't work like regular apps; they aren't being run just once. The objects created stay in memory and can be inspected until you change the code, at which point the whole playground is reevaluated. When this happens, all previous results are discarded and while all object will be deallocated, you won't see any output from that.

Your code is correct, but Playgrounds is not suited to test things related to memory management.

Here's a related SO question: Memory leaks in the swift playground / deinit{} not called consistently
http://stackoverflow.com/questions/24021340/memory-leaks-in-the-swift-playground-deinit-not-called-consistently
*/


// unowned references
class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit {
        println("\(name) is being deinitialized.")
    }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit { println("Card #\(number) is being deinitialized") }
}

var john: Customer?
john = Customer(name: "John Appleseed")
john!.card = CreditCard(number: 1234_5678_9012_3456, customer: john!)
john = nil

class Country {
    let name: String
    let capitalCity: City!
    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
}

class City {
    let name: String
    unowned let country: Country
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
}

var country = Country(name: "Canada", capitalName: "Ottawa")
println("\(country.name)'s capital city is called \(country.capitalCity.name)")

// strong reference cycles for closures
class HTMLElement {
    let name: String
    let text: String?
    
    lazy var asHTML: () -> String = {
        // [ unowned self ] in //resolving strong reference cycles for closures
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
    }
    
    init(name:String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    
    deinit {
        println("\(name) is being deinitialized")
    }
}

var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello, world")
println(paragraph!.asHTML())
paragraph = nil

// resolving strong reference cycles for closures




