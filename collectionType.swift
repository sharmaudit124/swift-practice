import Foundation;


var arr : [String] = ["Apple","Mango","Banana"];

arr.append("PineApple")
arr.insert("Test", at: 2);

print(arr);

arr.remove(at: 2);
print(arr.sorted());

//iterate
for (index,fruit) in arr.enumerated(){
    print(index,fruit);
}

var names = Set<String>();

names.insert("Udit")
names.insert("Sharma")
names.insert("Mango")
names.insert("Udit")
names.insert("Sharma")
names.insert("Mango")

print(names.count)

let numbers: Set = [1,1,2,3,4,5,6,7,8,9]
let even: Set = [0,2,4,6,8]
let odd: Set = [1,3,5,7,9]
let random: Set = [2,3,6,7]

print(even.isSubset(of: numbers))
print(odd.isSubset(of: numbers))
print(numbers.isSuperset(of: odd))
print(numbers.isDisjoint(with: even))

//dictionaries

var map : [Int : String]=[:]
print("Dictionary length is \(map.count)");

// map.insert(0,"Zero")

map[0] = "Zero"
map[1] = "One"
map[2] = "Two"
map[3] = "Three"
print(map)
print("Dictionary length is \(map.count) now");

for (key , value) in map{
    print("\(key) is \(value)")
}

// we can traverse through simply map.key and map.value

if let val = map[3] {
    print("The value is \(val)")
}else{
    print("Value does not exist")
}