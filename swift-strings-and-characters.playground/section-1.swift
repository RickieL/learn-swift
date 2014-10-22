// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

for character in "Dog!🐶知识" {
    println(character)
}

let yenSign: Character = "¥"
println(yenSign)

let multiplier = 3
var message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
message = "\(multiplier) times 2.5 is \(multiplier * 2.5)"

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"

let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{00E9}"

let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "\u{65}\u{303}"
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"

let enclosedEAcute: Character = "\u{1112}\u{20DD}"
let regionalIndicatorForUS: Character = "\u{1F1E8}\u{1F1F3}"

let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
println("unusualMenagerie has \(countElements(unusualMenagerie)) characters")

var word = "cafe"
var printString = "the number of charaters in \(word) is \(countElements(word))"
println(printString)

word += "\u{301} s"
printString = "the number of charaters in \(word) is \(countElements(word))"
println(printString)

let latinCapitalLetterA: Character = "\u{41}"
let cyrillicCapitalLetterA: Character = "\u{0410}"
if latinCapitalLetterA != cyrillicCapitalLetterA {
    println("These two characters are not equivalent")
}
// prints "These two characters are not equivalent"

let dogString = "Dog‼🐶"
var dogStringTest = "Dog!!🐶"
for character in dogString {
    println(character)
}
if dogString != dogStringTest {
    println("yes")
}

for codeUnit in dogString.utf16 {
    print("\(codeUnit) ")
}
print("\n")

for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}

var city:Dictionary<String,String> = ["key1":"wuhan","key2":"kunming","key3":"changsha"]
city.count



