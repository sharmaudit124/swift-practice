[12:56] Prapti
struct Outer {
    var outerProperty: Int
   
    // Nested struct
    struct InnerStruct {
        var innerProperty: String
    }
   
    // Nested enum
    enum InnerEnum {
        case case1, case2
    }
   
    // Nested class
    class InnerClass {
        var innerProperty: Double
       
        init(innerProperty: Double) {
            self.innerProperty = innerProperty
        }
       
        func innerMethod() {
            print("Inner class method called")
        }
    }
}
 
// Usage of nested types
var outerInstance = Outer(outerProperty: 10)
print(outerInstance.outerProperty)
let innerStructInstance = Outer.InnerStruct(innerProperty: "Nested")
print(innerStructInstance.innerProperty)
 
let innerEnumCase = Outer.InnerEnum.case1
print(innerEnumCase)
 
let innerClassInstance = Outer.InnerClass(innerProperty: 3.14)
innerClassInstance.innerMethod()
 