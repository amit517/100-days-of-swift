import UIKit


func travel (action: (String) -> Void) {
    print("I', getting ready to go.")
    action("London")
    print("I'm arrived")
}

travel { (place: String) in
    print("I'm going to \(place) by car")
}

func travelWithReturn(action: (String) -> String) {
    print("I', getting ready to go.")
    let description = action("London")
    print(description)
    print("I'm arrived")
}

travelWithReturn { (place: String) in
    return "I'm going to \(place) by car"
}

travel {
    print("I'm going to \($0) by car")
}

travel { place in
    print("I'm going to \(place) by car")
}

func travelNewWay (action: () -> String) {
    print("I', getting ready to go.")
    print(action())
    print("I'm arrived")
}

travelNewWay {
    "This is the new generation boys"
}

func travel (action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 80)
    print(description)
    print("I'm arrived")
}

travel { loation, speed in
    "I'm going to \(loation) at \(speed) miles per hour."
}

func anotherTravelWithClosureReturn() -> (String) -> Void {
    var counter = 1

    return {
        print("I'm going to \($0)")
        counter += 1
    }
}

let result = anotherTravelWithClosureReturn()
result("London")
result("London")
result("London")
result("London")

func makeRandomNumberGenerator() -> () -> Int {
    var previousNumber = 0
    return {

        var newNumber: Int

        repeat {
            newNumber = Int.random(in: 1...3)
        } while newNumber == previousNumber

        previousNumber = newNumber
        return newNumber
    }
}

let generator = makeRandomNumberGenerator()

for _ in 1...10 {
    print("\n \(generator())")
}
