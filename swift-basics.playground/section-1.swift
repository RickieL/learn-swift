// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 1, z = 1.1

var welcomeMessage: String
welcomeMessage = "Hello"

var red, green, blue: Double

let π = 3.14159
println(π)

let 你好 = "你好世界"
println(你好)

var friendlyWelcom = "Hello!"
friendlyWelcom = "Bonjour!"

let languageName = "Swift"

println(friendlyWelcom)

    
    
let cat = "🐱"; println(cat)

let minValue = UInt8.min
let maxValue = UInt64.max

//let pi = 3 + 0.14159
//println("\(_stdlib_getTypeName(pi))")

let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

let float_decimal = 1.25e2
let float_decimal_minus = 1.25e-2

let hexa_decimal = 0xFp2         // 15 * 2(exp2)
let hexa_decimal_minus = 0xFp-2  // 15 * 2(exp-2)

// All of these floating-point literals have a decimal value of 12.1875:
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

/*
* explain why hexadecimalDouble = 0xC.3p0 equal 12.1875
* 解释为什么 hexadecimalDouble = 0xC.3p0 等于 12.1875
* 将其转换为16进制

        0x      C .    3  p0  = 0xCp0 + 0x3p-4 = 12 + 3*(1/16)
0xC.3 = 0000 0110 . 0011

// example:
var hexadecimalDoubleTest = 0x0.33p0
// 0x0.33p0 = 0x3p-4 + 0x3p-8 = 3*(1/16)+3*(1/256) = 0.19921875
*/

let paddedDouble = 000123.456
let oneMillion = 1_00_100
let justOverOneMilloion = 1_000_000.000_000_1

//let cannotBeNegative: UInt8 = -1
//let tooBig: Int8 = Int8.max + 1

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine

let FloatPi = Float(pi)
let integerPi = Int(pi)

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.max

let orangesAreOrange = true
let turnipsAreDelicious = false

let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")
println("The status code if \(http404Error.0)")
println("The status message is \(http404Error.1)")

let possibleNumber = "123"
let convertedNumber = possibleNumber.toInt()

if convertedNumber == nil {
    println("convertedNumber is nil")
} else {
    println("convertedNumber has an integer value of \(convertedNumber).")
}

var age = -3
//assert(age >= 0, "A person's age cannot be less than zero")





