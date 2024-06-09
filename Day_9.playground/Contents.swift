import UIKit

var greeting = "Hello, playground"

struct User {
    var username: String

    init() {
        username = "Anonymus"
        print("Creating a new user")
    }

    init(username: String) {
        self.username = username
    }
}

var user = User(username: "amit517")
print(user)

var user2 = User()
user2.username = "changedUserName"
print(user2.username)

struct FamilyTree {
    init() {
        print("Creating family tree")
    }
}

struct Person {
    var name: String
    lazy var familyTree = FamilyTree()


    init (name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

var ed = Person(name: "Ed")
print("Will access this family tree now")
ed.familyTree

struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let ed2 = Student(name: "Ed")
let taylor = Student(name: "Taylor")
print(Student.classSize)

struct OfficePerson {
    private var id: Int

    init(id: Int) {
        self.id = id
    }

    func identify() -> String {
        return "My office id is \(id)"
    }
}

let amit = OfficePerson(id: 12345)
print(amit.identify())
