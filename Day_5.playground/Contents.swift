import UIKit

func printHelp() {
    let message = """
Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""
    print(message)
}

printHelp()


func square(number: Int) -> Int {
    return number * number
}

print(square(number: 8))

func add(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

print(add(num1: 8, num2: 10))

func greet(_ name: String) -> String {
    let string = if name == "Taylor Swift" {
        "Oh wow!"
    } else {
        "Hello, \(name)"
    }
    return string
}

print(greet("Amit"))

func greet(to name: String) {
    print("Hello \(name)")
}

greet(to: "Amit")

func setAge (for person: String, to value: Int = 0) {
    print("\(person) is now \(value)")
}

setAge(for: "Amit Kundu", to: 29)

print("Amit", "Test", "Another", "string")

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) sqared is \(number * number)")
    }
}

square(numbers: 1, 2, 3, 4, 5)

enum PasswordError: Error {
    case obvious
}

func checkPassword(password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    } else {
        return true
    }
}

do {
    try checkPassword(password: "password")
    print("That password is good")
} catch {
    print("You can't use that password")
}

print(try checkPassword(password: "string password"))

func doubleInPlace(number : inout Int){
    number*=2
}

var number = 2
doubleInPlace(number: &number)
print(number)
