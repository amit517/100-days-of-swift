import UIKit

var greeting = "Hello, playground"


var number = 1

while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not here I come")


repeat {
    print(number)
} while number <= 20

print("Ready or not here I come")


while false {
    print("This is false")
}

repeat {
    print("This is false")
} while false


var countDown = 10
while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}

print("Blast off")

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

for i in 1...10 {
    if i % 2 == 1 {
        print(i)
        continue
    }

    print(i)
}

var counter = 0

while true {
    print(" ")

    if counter == 273 {
        break
    }

    counter += 1
}
