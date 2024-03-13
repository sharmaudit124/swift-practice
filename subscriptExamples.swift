import Foundation;

// basic syntax to create a subscript

subscript(index: Int)-> Int{
    get{
        // return something here
    }
    set(newValue){
        // set something new here
        // type of newValue is same as that of subscript
    }
}

//---------------------------------------------Complex Example---------------------
struct TimesTable{
    let multiplier: Int

    subscript(index: Int) -> Int{
        //we can ignore get here
        get{
            return multiplier * index
        }
    }
}

let multiplier = TimesTable(multiplier: 3);
print(multiplier[5]);

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

print(arr[3])
print(arr[18])