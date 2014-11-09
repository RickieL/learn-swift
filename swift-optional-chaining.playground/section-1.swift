// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// optional chaining as an alternative to forced unwrapping
class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john1 = Person()
if let roomCount = john1.residence?.numberOfRooms {
    println("John's residence has \(roomCount) room(s).")
} else {
    println("Unable to retrieve the number of rooms.")
}

john1.residence = Residence()
if let roomCount = john1.residence?.numberOfRooms {
    println("John's residence has \(roomCount) room(s).")
} else {
    println("Unable to retrieve the number of rooms.")
}

// defining model classes for optional chaining
class Person2 {
    var residence: Residence2?
}
class Residence2 {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {
        println("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
}

class Room {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if buildingName != nil {
            return buildingName
        } else if buildingNumber != nil {
            return buildingNumber
        } else {
            return nil
        }
    }
}

let john = Person2()
if let roomCount = john.residence?.numberOfRooms {
    println("John's residence has \(roomCount) room(s).")
} else {
    println("Unable to retrieve the number of rooms.")
}

let someAddress = Address()
someAddress.buildingNumber = "29"
someAddress.street = "Acacia Road"
john.residence?.address = someAddress
if john.residence?.printNumberOfRooms() != nil {
    println("It was possible to print the number of rooms.")
} else {
    println("It was not possible to print the number of rooms.")
}

let johnsHouse = Residence2()
johnsHouse.rooms.append(Room(name: "Living Room"))
johnsHouse.rooms.append(Room(name: "Kitchen"))
john.residence = johnsHouse
if let firstRoomName = john.residence?[0].name {
    println("The first room name is \(firstRoomName).")
} else {
    println("Unable to retrieve the first room name.")
}


// accessing subscripts of optional type
var testScores = ["Dave": [86, 82, 84], "Bev": [79, 94, 81]]
testScores["Dave"]?[0] = 91
testScores["Bev"]?[1]++
testScores["Bev"]?[2] = 88
testScores["Brian"]?[0] = 72
println(testScores)

if let johnStreet = john.residence?.address?.street {
    println("John's street name is \(johnStreet).")
} else {
    println("Unable to retrieve the address.")
}


// linking multiple levels of chaining
let johnsAddress = Address()
johnsAddress.buildingName = "The Larches"
johnsAddress.street = "Laurel Street"
john.residence!.address = johnsAddress

if let johnsStreet = john.residence?.address?.street {
    println("John's street name is \(johnsStreet).")
} else {
    println("Unable to retrieve the address.")
}

// chaining on methods with optional return values
if let buildingIdentifier = john.residence?.address?.buildingIdentifier() {
    println("John's building identifier is \(buildingIdentifier).")
}

if let beginsWithThe = john.residence?.address?.buildingIdentifier()?.hasPrefix("e") {
    if beginsWithThe {
        println("John's building identifier begins with \"the\".")
    } else {
        println("John's building identifier not begins with \"the\".")
    }
} 


