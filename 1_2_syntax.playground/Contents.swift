import UIKit

var str = "Hello, playground"

//markdown syntax 
/**
 fibonacci
 # Heading
 * **something**
 * *italic*
 *  [link here](https://www.markdownguide.org/basic-syntax/)
 # Something
 - Returns: Int
 - Parameter num: number of cycle
 - Parameter no: this parameter doesn't exist
 - Throws: Error description
 - Precondition: num > 0
 - Complexity: O(1)
 - Authors: me
 */

func fibonacci(of num: Int, no: Int? = nil) -> Int {
    if num < 2 {
        return num
    } else {
        return fibonacci(of: num - 1) + fibonacci(of: num - 2)
    }
}

//let fibonacciSequence = (0...20).map(fibonacci)
//print(fibonacciSequence[0...7])


//swap

var a = 10
var b = 20

(a, b) = (b, a)
//print(a)
//print(b)

var board = [[String]](repeating: [String](repeating: "", count: 10), count: 5)
board[3][5] = "x"

for (_, cols) in board.enumerated() {
    for case (let colIndex, "x") in cols.enumerated() {
        print("Found x at \(colIndex)")
    }
}

//name loop
rowLoop: for (rowIndex, cols) in board.enumerated() {
    for (colIndex, col) in cols.enumerated() {
        if col == "x" {
            print("Found x at row \(rowIndex) col \(colIndex)")
            break rowLoop
        }
    }
}

let userRequestedPrint = true
let documentSaved = true
let userAuthenticated = true
let connectToNetwork = true
let uploadDocument = true

printing: if userRequestedPrint {
    guard documentSaved else { break printing }
    guard userAuthenticated else { break printing }
    guard connectToNetwork else { break printing }
    guard uploadDocument else { break printing }
    
    print("Printed successfully!")
}
