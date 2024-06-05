import UIKit

struct Sport {
    var name: String
}

var tannis = Sport(name: "Tannies")
print(tannis.name)

tannis.name = "Lawn tennis"
print(tannis.name)

struct Sport2 {
    var name: String
    var isOlempicSport: Bool

    var olympicStatus: String {
        if isOlempicSport {
            return "\(name) is olympic sport"
        } else {
            return "\(name) is not olympic sport"
        }
    }
}

let chessBoxing = Sport2(name: "Chessboxing", isOlempicSport: false)
print(chessBoxing.olympicStatus)

struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

struct City {
    var population: Int

    func collecttaxes() {
        print("Calculating population")
    }
    func getCollectedTaxes() -> Int {
        return population * 1000
    }
}

let london = City(population: 9_000_000)
print(london.getCollectedTaxes())

struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Amit ")
print(person.name)
person.makeAnonymous()
print(person.name)

let string : String =  "Do or do not, there is no try."

print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
print(toys.firstIndex(of: "Buzz") )
print(toys.sorted())
toys.remove(at: 0)
print(toys)

var usedNumbers = [Int]()
for i in 1...10 {
    usedNumbers.append(i)
}
usedNumbers.count > 5
