import Foundation;

var myClosure: (Int) -> Void = { number in
    print("Number is \(number)")
}

myClosure(24)

let add: (Int, Int) -> Int = { (val1 , val2) in
    print(val1+val2);
}

add(2,4)

func performOperation(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}
 
// Using the closure as a parameter
let product = performOperation(4, 2, operation: { $0 * $1 })
print("Product: \(product)")

// simple syntax
// {(parameter) -> (ReturnType) in
// // Body of the closure
// }

var printNameUSingClosure = {() -> (Void) in
//Body of closure
print("Udit's Hello Closure")
}

printNameUSingClosure()
// when there is no parameter and return type then we can even skip in keyword
var printNameUSingClosure = {
//Body of closure
print("Udit's Hello Closure without IN")
}

// Type of closures


func printNameWithString(name: String){
    print("Hey There! \(name) this dise.")
}
// (String)->()
var nameClosure:(String)->() = printNameWithString

nameClosure(name: "Udit")
// Type of the given closure is (String)->()
var printForClosure:(String)-> Void = {
    (name)->() in
    //Body of closure
    print("Hello printForClosure output is \(name)")
}

func appendString(str1:String, str2:String)-> String{
    return "\(str1) \(str2)"
}

var appendStringUsingClosure :(String, String)-> String{
    (str1,str2) -> String in
    //Body of Closure
    return "\(str1) \(str2)"
}

print(appendStringUsingClosure("Udit","Sharma"))

//passing closure as function parameter
func myFunc(myFuncClosure: ()->()){
    print("function is invoked")
    // call closure here
    myFuncClosure();
}


myFunc(myFuncClosure:{
    print("Closure is invoked")
})

func myClosFunc(add: (Int, Int) -> (Int)){

}

myClosFunc(add :{(val1,val2) in
    return val1 + val2
})

func makeIncrementer(incrementAmount: Int) -> (() -> Int) {
    var total = 0
    let incrementer: () -> Int = {
        total += incrementAmount
        return total
    }
    return incrementer
}
 
// Here closure is saving the state in multiple calls!!
let incrementBy2 = makeIncrementer(incrementAmount: 2)
print(incrementBy2())  // Output: 2
print(incrementBy2())  // Output: 4

func myClosFunc(add: (Int, Int) -> (Int)){
    print("Function Invoked")
    print(add(2,3))
}

myClosFunc(add :{(val1,val2) in
    print("Closure Invoked")
    return val1 + val2
})

//Trailing closure syntax
//when closure is the last parameter of function we call it like this

