// Extensions in swift

import Foundation;

// extension is a part of existing class, struct, or enum or protocol to add new code (variables, functions,initializers)
// i.e. new feature can be added to existing class or structure or enum without modifying 
// the actual source code.

class Person{
    var name: String = "Udit"
    var age: Int = 23

    func display(){
        print("name is \(name) and age is \(age)")
    }

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    init() {
        self.name = "Ram"
        self.age = 18
    }
}

var obj = Person()

obj.display()

let obj1 = Person(name: "Udit", age: 23)
obj1.display()

obj.name = "Sharma"
obj.age = 20

obj.display()
//extension must not contains stored properties
extension Person{
    //var mobile : Int = 68587578885
    var isAdmin: Bool {
        return false
    }

    func isVoter() -> Bool{
        guard age >= 18 else{
            return false
        }
        return true
    }
}

print(obj.isVoter())
print(obj.isAdmin)

//--------------- extension in Data Types ----------------------


extension Int{
    func repetitions(task: () -> Void) {
        //implementation
        for val in 0..<self {
            if val % 1000 == 0{
               task() 
            }
        }
    }
}

2000.repetitions {
    () -> Void in
    print("Hello!")
}

extension String{
    func isStringEquals( str: String) -> Bool{
        return self == str
    }
}
print("Udit".isStringEquals(str: "Udit"))


//------------------------Extensions in subscript-------------------

struct SimpleArray{
    var arr : [Int] = [];

    subscript(index: Int) -> Int{
        get{
            guard index < arr.count else {
                print("Invaid Index Entered")
                return 0;
                //throw error
            }
            return arr[index];
        }
        set(newValue){
            if index < arr.count {
                arr[index] = newValue
            }else{
                arr.append(newValue)
            }
        }
    }
}

var arr = SimpleArray();
arr[0] = 1;
arr[1] = 2;
arr[2] = 3;
arr[3] = 4;

extension SimpleArray {
    subscript(double index: Int) -> Int {
        get {
            guard index < arr.count else {
                print("Invalid Index Entered")
                return 0
            }
            return arr[index] * 2
        }
        set(newValue) {
            if index < arr.count {
                arr[index] = newValue * 2
            } else {
                arr.append(newValue * 2)
            }
        }
    }
}





var array = SimpleArray(arr: [1, 2, 3, 4, 5])

print(array[double: 2]) 

array[double: 3] = 10 
print(array.arr)


