import UIKit
import Foundation

let heading = "This is heading"
let underline = String(repeating: "=", count: heading.count)

let equalsArray = [String](repeating: "=", count: heading.count)
let board = [[String]](repeating: [String](repeating: "", count: 10), count: 10)

//print(board)

//MARK: convert to and from numbers

let str = String(28, radix: 16, uppercase: true)
//print(str)

if let int = Int("1C", radix: 16) {
//    print(int)
}

//MARK: - Array

var numbers = [5, 3, 1, 9, 5, 2, 7, 8]
var names = ["Taylor", "Timothy", "Tyler", "Thomas", "Tobias", "Tabita"]

numbers.sort() {
    return $0 > $1
}

//print(numbers)
//print(numbers.min()!)
//print(names.max()!)

struct Dog: Comparable {
    var breed: String
    var age: Int

    //MARK: Comparable protocol
    
    static func < (lhs: Dog, rhs: Dog) -> Bool {
        return lhs.age < rhs.age
    }
    static func == (lhs: Dog, rhs: Dog) -> Bool {
        return lhs.age == rhs.age
    }
}

let poppy = Dog(breed: "Poodle", age: 5)
let rusty = Dog(breed: "Labrador", age: 2)
let rover = Dog(breed: "Corgi", age: 11)

let dogs = [poppy, rusty, rover]
dogs.sorted()

let start = CFAbsoluteTimeGetCurrent()
var array = Array(1...1000000)
//array.reserveCapacity(1000000) //note: it's very expensive operation
//array.reserveCapacity(1000000)

let duration = CFAbsoluteTimeGetCurrent() - start
//print("It took \(duration) seconds")

//MARK: Contiguous arrays
//the same
let arr1 = [Int]()
let arr2 = Array<Int>(1...1000000)

//another one. It wors faster than Array no matter what
let arr3 = ContiguousArray<Int>(1...1000000)

let start1 = CFAbsoluteTimeGetCurrent()
arr2.reduce(0, +)
var duration1 = CFAbsoluteTimeGetCurrent() - start1
//print("1. It took \(duration1) seconds")

let start2 = CFAbsoluteTimeGetCurrent()
arr3.reduce(0, +)
var duration2 = CFAbsoluteTimeGetCurrent() - start2
//print("2. It took \(duration2) seconds")

let cities = ["Shangai" : 24_256_700, "Karachi" : 23_500_000, "Beiji" : 21_516_000, "Seoul" : 9_995_000]
let roundedCities = cities.mapValues {"\($0 / 1_000_000) million people"}
let groupedCities = Dictionary(grouping: cities.keys) { $0.first! }
print(groupedCities)

let groupedCities2 = Dictionary(grouping: cities.keys) { $0.count }
print(groupedCities2)

let person = ["name" : "Taylor", "city" : "Nashvikke"]
let name1 = person["namew", default: "Anonymous"] // the same person["namew"] ?? "Anonymous"
let name2 = person["name"] ?? ""
print(name1)

let favoriteTVShows = ["Red Draft", "Blackadder", "Falty Towers", "Red Dwarf"]
var favoriteCounts = [String : Int]()

for show in favoriteTVShows {
    favoriteCounts[show, default: 0] += 1
}

//MARK: Sets

var set1 = Set<Int>([1, 2, 3, 4, 5])
var set2 = Set(1...100)
set2.insert(7)
set1.popFirst()

var spaceships = ["Serenity", "Nostromo", "Enterprise"]
spaceships += ["Voyager", "Serenity", "Star Destroyer"]
spaceships += ["Galactica", "Sulaco", "Minbari"]

//NSCountedSet can count how many repetitions he has, BUT he doesn't have any
let countedSet = NSCountedSet(array: spaceships)
print(countedSet)
print(countedSet.count(for: "Serenity"))
print(countedSet.count(for: "Sulaco"))


//MARK: - Tuples

func doNothing() {}
_ = doNothing()

func createString() -> String { return "String"}
let tupleStr: (String) = createString()

//if there is only one element inside the parentheses, the type [of the tuple] is simply the type of that element
let int1: (Int) = 1 // tuple : Int
let int2: Int = (1) // Int : tuple

let a: Int = int2 + 1

//MARK: Generics

func inspectString(_ value: String) {
    print("Received String with the value \(value)")
}

inspectString("Haters gonna hate")

func inspectString(_ value: Int) {
    print("Received String with the value \(value)")
}
inspectString(42)

func inspect<T>(_ value: T) {
    print("Data types \(type(of: value)), value \(value)")
}

inspect(56)
inspect("Haters gonna hate")

func square<T: BinaryInteger>(_ value: T) -> T {
    return value * value
}

struct deque<T> {
    var array = [T]()
    
    mutating func pushBack(_ obj: T) {
        array.append(obj)
    }
    
    mutating func pushFront(_ obj: T) {
        array.insert(obj, at: 0)
    }
    
    mutating func popBack() -> T? {
        return array.popLast()
    }
    
    mutating func popFront() -> T? {
        if array.isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
}

var testDeque = deque<Int>()
testDeque.pushBack(5)
testDeque.pushFront(2)
testDeque.pushFront(1)
testDeque.popBack()

struct CustomCountedSet<T : Any> {
    let internalSet = NSCountedSet.init()

    mutating func add(_ obj: T) {
        internalSet.add(obj)
    }

    mutating func remove(_ obj: T) {
        internalSet.remove(obj)
    }

    func count(for obj: T) -> Int {
        return internalSet.count(for: obj)
    }
}

var countedSet1 = CustomCountedSet<String>()
countedSet1.add("Hello")
countedSet1.add("Hello")
countedSet1.count(for: "Hello")



