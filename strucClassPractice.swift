import Foundation;

class DataImporter {
    var filename = "data.txt"
}


class DataManager {
    lazy var importer = DataImporter()
    var data: [String] = []
}


let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")

print(manager.importer.filename)



struct Point{
    var x = 1, y = 1;

    //mutating likhne se we can change the instance variables values as well which will make the similar behavior as of class
    mutating func changeValue(_ a: Int, _ b: Int){
        x += a;
        y += b;
        print("A is \(a) and B is \(b)")
    }

}

var point = Point();
point.changeValue(2, 4)
print("X is \(point.x) and Y is \(point.y)")


// Enumeration Mutation

eenum TriStateSwitch {
    case off, low, high

    mutating func change() {
        switch self {
        case .off:
            self = .low
            print("Switch changed to low")
        case .low:
            self = .high
            print("Switch changed to high")
        case .high:
            self = .off
            print("Switch changed to off")
        }
    }
}

var mySwitch = TriStateSwitch.low
mySwitch.change()  // Switch changed to low
mySwitch.change()  // Switch changed to high
mySwitch.change()  // Switch changed to off


// Java me jaise static methods hote hai ui tarah swift me bhi hote hai,
// just use static in front of them and call them like ClassName.someMethod and those are called typeMethods
// isme we cannot use class level non static veriables.
struct Level{
    static var height=2.5;

    static func updateHeight(_ h: Double)->(){
        self.height += h
        print("Updated ehight is \(self.height)")
    }
}

Level.updateHeight(2.5)

