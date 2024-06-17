import UIKit

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }

    func makeNoise() {
        print("Woof!")
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

print(poppy)

class Empty { }
let nothing = Empty()

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }

    override func makeNoise() {
        print("Yip!")
    }
}

let myPoodle = Poodle(name: "Jack")
print(myPoodle.name)
myPoodle.makeNoise()

class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit{
        print("\(name) is no more \n....")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

class Singer{
    let name = "Taylor Swift"
}

let taylor = Singer()
print(taylor.name)

