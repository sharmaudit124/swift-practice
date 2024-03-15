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