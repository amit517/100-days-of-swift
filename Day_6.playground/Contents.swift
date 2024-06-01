import UIKit

let driving = {
    print("I'm driving in my car")
}

driving()

var flying = { (place: String) in
    print("I'm flying to \(place)")
}

flying("London")

var drivingWithReturn = { (places: String) -> String in
    return "I'm going to \(places) in my car"

}

let message = drivingWithReturn("London")
print(message)
print(message)

func travel (action: () -> Void) {
    print("I'm getting ready to go")
    action()
    print("I arrived")
}

travel(action: driving)

func holdClass(_ name: String, lesson: () -> Void) {
    print("Welcome to \(name)!")
    lesson()
    print("Make sure your homework is done by next week.")
}
holdClass("Philosophy 101") {
    print("All we are is dust in the wind, dude.")
}
