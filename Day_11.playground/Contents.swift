import UIKit


protocol Identifiable {
    var id: String { get set }
    func identify()
}

extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User: Identifiable {
    var id: String
}

func displayID (thing: Identifiable) {
    print("My id is \(thing.id)")
}

displayID(thing: User(id: "Q123"))

protocol Payable {
    func calculateWage() -> Int
}

protocol NeedTraning {
    func study()
}

protocol Employe: Identifiable, Payable, NeedTraning {

}

struct Engineers: Employe {
    let yearOfExperience: Int
    var id: String

    func calculateWage() -> Int {
        return 10 * yearOfExperience
    }

    func study() {
        print("Employee is in tranning...--...")
    }
}

let amit = Engineers(yearOfExperience: 4, id: "AK2008")
print("Approximate wage is \(amit.calculateWage())")
amit.study()

extension Int {
    func squared() -> Int {
        return self * self
    }

    func toDouble() -> Double {
        return Double(self)
    }

    var isEven: Bool {
        return self % 2 == 0
    }
}

let number = 8
number.squared()
number.toDouble()
number.isEven


let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize () {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }

        print("---")
    }
}

pythons.summarize()
beatles.summarize()


let twostraws = User(id: "twostraws")
twostraws.identify()
