import Foundation;

func swapTwoInts(a: inout Int, b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

// How to makethis Generic????

func swapTwoValues<T>(a: inout T, b: inout T){
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoValues(&someInt, &anotherInt)


var someString = "hello"
var anotherString = "world"
swapTwoValues(&someString, &anotherString)


//-----Example of stack using array-------

struct Stack<T> {
    var items: [T] = []
    mutating func push(_ item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}

extension Stack {
    var topItem: T? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}


//---------------------Arrays defining------------

var arr = Array<Int>() // empty array of integer
arr.append(254)
arr.append(14)
print(arr)

var dict = Dictionary<String, String>()

dict["Udit"]="Sharma"
dict["Ram"]="Sharma"

print(dict)

//--------------------Associated Types------------------------

protocol Stackable{
    associatedtype Item

    func push(item:Item)
    func pop() -> Item
}