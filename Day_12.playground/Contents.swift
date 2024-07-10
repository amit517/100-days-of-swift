import UIKit

var age: Int? = nil

age = 38

if let age {
    print(age)
}

func greet (_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name")
        return
    }
    
    print("Hello, \(unwrapped)")
}

greet(nil)
greet("Amit!")

let str = "5"
let number = Int(str)


func username (for id: Int) -> String? {
    return if id == 1 {
        "Taylor Swift"
    }else{
        nil
    }
}

print(username(for: 15) ?? "Anonymous")

let names = ["Amit", "Soumik", "Topu"]
let beatle = names.first?.uppercased()

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

if let result = try? checkPassword("password"){
    print("Result was \(result)")
} else {
    print("D'oh.")
}

try! checkPassword("sekrit") // If it returns an error the code will crash
print("OK!")

struct Employee {
    var username: String?
    var password: String?

    init?(username: String, password: String) {
        guard password.count >= 8 else { return nil }
        guard password.lowercased() != "password" else { return nil }

        self.username = username
        self.password = password
    }
    
    init?(password: String){
        guard password.count >= 8 else { return nil }
        
        self.password = password
        username = nil
    }
}

let tim = Employee(password: "app1eghjg")
let craig = Employee(username: "CraigF", password: "ha1rf0rce0ne")

class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
