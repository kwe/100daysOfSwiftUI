import UIKit

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore

let reminder = 13 % secondScore



let firstHalf = ["John", "Paul", "Ringo"]
let secondHalf = ["George"]

let beatles = firstHalf + secondHalf

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}


let firstCard = 11
let secondCard = 10
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")


let weather = "sunny"

switch weather {
    case "Rain":
        print("Always")
        fallthrough
default:
    print("Raining!")
}

let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}
