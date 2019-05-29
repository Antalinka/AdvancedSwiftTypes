import UIKit
import PlaygroundSupport
import Foundation


//11. MARK: Types
let view: AnyObject = UIButton()

switch view {
case is UIButton:
    print("It's a button")
default:
    print("It's not a button")
}

let label = UILabel()
label.text = "text"

let subviews = [view, label]

for case let label as UILabel in subviews {
    print("Found a label with text \(String(describing: label.text))")
}

/*
//10. MARK: Ranges

enum WeatherType {
    case cloudy(coverage: Int)
    case sunny
    case windy
}

let today = WeatherType.cloudy(coverage: 9)

switch today {
case .cloudy(let coverage) where coverage == 0:
    print("You must live in Death Valley")
case .cloudy(let coverage) where (1...50).contains(coverage):
    print("It's a bit cloudy, with \(coverage)% coverage")
case .cloudy(let coverage) where (51...99).contains(coverage):
    print("It's very cloudy, with \(coverage)% coverage")
case .cloudy(let coverage) where coverage == 100:
    print("You must live in the UK")
case .windy:
    print("It's windy")
default:
    print("It's sunny")
}

let forecast: [WeatherType] = [.cloudy(coverage: 40), .sunny, .windy, .cloudy(coverage: 100), .sunny]

for case let .cloudy(coverage) in forecast {
    print("It's cloudy with \(coverage)% coverage")
}*/


/*//9. MARK: Ranges

let age = 71

if case 0 ..< 18 = age {
    print("You have the energy and time, but not the money")
} else if case 18 ..< 70 = age {
    print("You have the energy and money, but not the time")
} else {
    print("You have the time and money, but not the energy")
}

//  ~= the pattern match operator for case, returns Bool type

if 0 ..< 18 ~= age {
    print("You have the energy and time, but not the money")
} else if 18 ..< 70 ~= age {
    print("You have the energy and money, but not the time")
} else if 71 ~= age {
    print("I want to sleep")
} else {
    print("You have the time and money, but not the energy")
}

if (0 ..< 18).contains(age) {
    print("You have the energy and time, but not the money")
} else if (18 ..< 70).contains(age) {
    print("You have the energy and money, but not the time")
} else if 71 ~= age {
    print("I want to sleep")
} else {
    print("You have the time and money, but not the energy")
}

*/


/*
//8. MARK: Optionals

let data: [Any?] = ["Bill", nil, 69, "Ted"]

for case let .some(datum) in data {
    print(datum)
}

var temp = [Any]()
for case let datum? in data {
    print(datum)
    temp.append(datum)
}
print(temp.count)

for case .none in data {
    print("Error")
}
*/

/*
//7. MARK: Optionals

let name: String? = "twostraws"
let password: String? = "twostrawsPass"

switch (name, password) {
case let(.some(matchedName), .some(_)):
    print("Hello \(matchedName)")
case (.some(_), nil):
    print("Please enter a password")
default:
    print("Who are you ?")
}
*/

/*
//6. MARK: Matching optional. Unwrap optional

let name: String? = "twostraws"
let password: String? = "twostrawsPass"

switch (name, password) {
case let(.some(matchedName), .some(_)):
    print("Hello \(matchedName)")
case (.some(_), .none):
    print("Please enter a password")
default:
    print("Who are you ?")
}*/

/*
//5. MARK: Loops
let twostraws = (name: "twostraws", pass: "twostrawsPass")
let bilbo = (name: "bilbo", pass: "baggins")
let taylor = (name: "taylor", pass: "twostrawsPass")
let users = [twostraws, bilbo, taylor]

for case (let name, "twostrawsPass") in users {
    print("Hello, \(name)")
}*/

/*
//4. MARK: Loops.
let twostraws = (name: "twostraws", pass: "twostrawsPass")
let bilbo = (name: "bilbo", pass: "baggins")
let taylor = (name: "taylor", pass: "twostrawsPass")
let users = [twostraws, bilbo, taylor]

for case ("bilbo", "baggins") in users {
    print("Hello, I know you!")
}*/

/*
//3. MARK: switch with bool
func fizzbuzz(number: Int) -> String {
    switch (number % 3 == 0, number % 5 == 0) {
    case (true, false):
        return "Fizz"
    case (false, true):
        return "Buzz"
    case (true, true):
        return "Fizzbuzz"
    case (false, false):
        return String(number)
    }
}
fizzbuzz(number: 7)
*/

//2. MARK: switch with mmultiple parameters
/*let name = "Name_3"
 let pass = "Pass"
 
 switch (name, pass) {
 case (_, _):
 print("Check it out!") // Swift will take the first matching case
 case ("Name", "Pass"):
 print("I know you")
 default:
 print("Who are you ?")
 }
 */

//1. MARK: usuall switch
/*
 let name = "twostraws"
 
 switch name {
 case "bilbo":
 print("Hello, Bilbo")
 case "twostraws":
 print("Hello, Paul")
 default:
 print("Who are you?")
 }
 */
