import UIKit


let nameArray: [String] = ["Amit", "Soumik", "Bain"]
print(nameArray)

let colors = Set(["red", "green", "blue"])
let colors_2 = Set(["red", "green", "blue", "green"])


var name = (first: "Taylor", last: "Swift", age: 12)
print(name.0)
print(name.age)


let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

print()
heights["Taylor Swift"]

let favoriteIceCream = [
    "Bristi": "Chocolate",
    "Amit": "Vanilla"
]

favoriteIceCream["Bristi", default: "Unknown"]
favoriteIceCream["Soumik", default: "Unknown"]


var teams = [String: String]()

teams["arg"] = "Winner"
teams["arg"]

var results = [Int]()

var words = Set<Int>()
var numbers = Set<Int>()

enum Result{
    case success
    case failure
}

let result = Result.failure


enum Activity {
    case bored
    case running(destination : String)
    case talking(topic: String)
    case singing(volum: Int)
}

let talking = Activity.talking(topic: "football")


enum Planet: Int{
    case mercury = 1
    case venus
    case earth
    case mars
}

let planate1 = Planet.earth
print(planate1.rawValue)
print(planate1.rawValue)

let earth = Planet(rawValue: 2)

print(earth?.rawValue)
