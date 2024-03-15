protocol Person {
    var name: String { get }
    var age: Int { get }
    func introduce()
}

struct Manager: Person {
    var name: String
    var age: Int
    var department: String
    
    func introduce() {
        print("Hi, I'm \(name), a manager in the \(department) department.")
    }
}

struct Admin: Person {
    var name: String
    var age: Int
    var responsibilities: [String]
    
    func introduce() {
        print("Hello, I'm \(name), an admin.")
    }
}

struct Teacher: Person {
    var name: String
    var age: Int
    var subjectTaught: String
    
    func introduce() {
        print("Greetings, I'm \(name), a teacher.")
    }
}


func randomPerson() -> Person {
    let random = Int.random(in: 1...3)
    switch random {
    case 1:
        return Manager(name: "Udit", age: 35, department: "Engineering")
    case 2:
        return Admin(name: "Udit", age: 28, responsibilities: ["scheduling", "record-keeping"])
    default:
        return Teacher(name: "Udit", age: 42, subjectTaught: "Mathematics")
    }
}

let person = randomPerson()
person.introduce() 


//----one more example-----

protocol Beverage {
    func drink()
}


struct Tea: Beverage {
    func drink() {
        print("Sipping tea...")
    }
}

struct Coffee: Beverage {
    func drink() {
        print("Sipping coffee...")
    }
}


func getBeverage(isTea: Bool) ->  Beverage {
    return isTea ? Tea() : Coffee()
}

let beverage = getBeverage(isTea: Bool.random())
beverage.drink()

