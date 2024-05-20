import UIKit

var greeting = "Hello, playground"

let firstScore = 12
let secondScore = 4



let sum = firstScore + secondScore
print(sum)

let weeks = 465 / 7

print("There are \(weeks) weeks until the event.")

let weeks_d: Double = 465 / 7

print("There are \(weeks_d) weeks until the event.")

let number = 465
let isMultiple = number.isMultiple(of: 7)


let meaningOfLife = 42
let doubleMeaning = 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["Amit", "Kundu"]
let beatles = firstHalf + secondHalf

var score = 95
score -= 5

var quote = "The rain in Spain falles mainly on the "
quote += "Spaniards"

firstScore > secondScore
firstScore == secondScore

firstScore >= secondScore
firstScore != secondScore

"Taylor" <= "Swift"


let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}


let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both age over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one age over 18")
}

print(firstCard == secondCard ? "Cards are same" : "Cards are not same")


let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day")
}

switch score{
case 0..<50:
    print("You failed badly")
case 0..<85:
    print("You did OK.")
default:
    print("You did great!")
}

let names = ["Piper", "Alex", "Suzanne", "Gloria"]
print(names[0...])
print(names[0])

