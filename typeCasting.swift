class Person{
    var name: String

    init(name: String){
        self.name = name
    }
}

class User : Person{
    var isAdmin: Bool

    init(name: String, isAdmin: Bool){
        self.isAdmin = isAdmin
        super.init(name: name) 
    }
}

class Admin : Person{
    var isAdmin: Bool

    init(name: String, isAdmin: Bool){
        self.isAdmin = isAdmin
        super.init(name: name) 
    }
}

class Manager : Person{
    var isAdmin: Bool
    var isManager: Bool

    init(name: String, isAdmin: Bool, isManager: Bool){
        self.isAdmin = isAdmin
        self.isManager = isManager
        super.init(name: name) 
    }
}

let people = [
    User(name: "Alice", isAdmin: false),
    User(name: "Bob", isAdmin: false),
    User(name: "Charlie", isAdmin: false),
    Admin(name: "Admin1", isAdmin: true),
    Admin(name: "Admin2", isAdmin: true),
    Manager(name: "Manager", isAdmin: false, isManager: true)
]

var userCount = 0;
var adminCount = 0;

for val in people {
    if val is Admin {
        adminCount += 1
    }else if val is User {
        userCount += 1
    }
}

print("There are total \(people.count) users, where there are \(adminCount) admins and \(userCount) users.")


for person in people {
    if let user = person as? User {
        print("User: \(user.name), isAdmin: \(user.isAdmin)")
    } else if let admin = person as? Admin {
        print("Admin: \(admin.name), isAdmin: \(admin.isAdmin)")
    }else{
        print(person.name)
    }
}

var things: [Any] = []


things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((3.0, 5.0))
things.append(Manager(name: "Ghostbusters", isAdmin: true, isManager: true))
things.append({ (name: String) -> String in "Hello, \(name)" })


for thing in things {
    switch thing {
    case 0 as Int:
        print("zero as an Int")
    case 0 as Double:
        print("zero as a Double")
    case let someInt as Int:
        print("an integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("a positive double value of \(someDouble)")
    case is Double:
        print("some other double value that I don't want to print")
    case let someString as String:
        print("a string value of \"\(someString)\"")
    case let (x, y) as (Double, Double):
        print("an (x, y) point at \(x), \(y)")
    case let manager as Manager:
        print("a manager called \(manager.name), is present")
    case let stringConverter as (String) -> String:
        print(stringConverter("Michael"))
    default:
        print("something else")
    }
}
