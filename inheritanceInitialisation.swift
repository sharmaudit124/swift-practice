class Vehicle{
    var speed :Double = 20.0;

    var description: String{
        return " I am running with speed \(speed)"
    }
    func makeSound(){
        print("vehicle sound")
    }
}

class Car : Vehicle{
    var gear = 1

    override func makeSound(){
        print("Car sound")
    }

    override var description: String {
       return super.description + " in gear \(gear)"
    }
}

var car = Car();
print(car.description)
car.makeSound()


// overriding property

class Shape {
    var size: Int = 5;
}

class ResizableShape: Shape {
    override var size:Int{
         willSet {
            print("Size will change from \(size) to \(newValue)")
        }
        didSet {
            print("Size did change from \(oldValue) to \(size)")
        }

        // willSet(newSize) {
        //     print("Size will change from \(size) to \(newSize)")
        // }
        // didSet(oldSize) {
        //     print("Size did change from \(oldSize) to \(size)")
        // }
        //-------even without specifying in bracket--------
        // didSet {
        //     print("Size did change from \(oldValue) to \(size)")
        // }
    }
}

var s = ResizableShape()
s.size = 20;


//---------------------------------Initialization-----------------------------
class Test{
    var a: Int
    var b: Int

    var optionalVal :Int?

    init(x a:Int, y b:Int){
        self.a = a;
        self.b = b;
    }

    init(_ val: Int){
        self.a = val;
        self.b = val;
    }
}

var test1 = Test(x: 10, y: 20);
var test2 = Test(50)

print("Test1 values are \(test1.a) and \(test1.b)")
print("Test2 values are \(test2.a) and \(test2.b)")