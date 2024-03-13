import Foundation;

class Person{
    var name : String
    var netWorth : Int?
    var gender : String!

    // Designated initialiser that make sure that all the properties are initialised
    init(){
        print("Init called")
        name = "Udit"
    }
}

var udit = Person()
print(udit.name)
print(udit.netWorth)
print(udit.gender)


//-----------------------------------Convenience Initializers----------------------
//Rule 1: Convenience initializer must call another initializer from the same class.
class Person{
    var name : String
    var netWorth : Int?
    var gender : String!

    // Designated initialiser that make sure that all the properties are initialised
    init(){
        print("Init called")
        name = "Udit"
    }

    convenience init(_ gender: String, _ netWorth: Int){
        print("Convinience init called")

        // call designated init first that object is ready to go
        self.init()

        self.gender = gender
        self.netWorth = netWorth
    
    }
}

//Rule 2: Designated initializer must call a designated initializer from its immediate superclass.
class Vehicle {
    var numberOfWheels: Int

    init(numberOfWheels: Int) {
        self.numberOfWheels = numberOfWheels
    }
}

class Car: Vehicle {
    var color: String

    init(numberOfWheels: Int, color: String) {
        self.color = color
        super.init(numberOfWheels: numberOfWheels) // Calling designated initializer of superclass
    }
}

//Rule 3: Convenience initializer must ultimately call a designated initializer.
class Square: Rectangle {
    convenience init(side: Double) {
        self.init(width: side, height: side) // Calling designated initializer of the superclass
    }
}





