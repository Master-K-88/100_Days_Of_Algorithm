import UIKit

import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

//public func solution(_ N : Int) -> Int {
//    // write your code in Swift 4.2.1 (Linux)
//    let num = String(N, radix: 2)
//    let strArr = num.split(separator: "1")
//    var solArr = [Int]()
//    for n in strArr {
//        solArr.append(n.count)
//    }
//    if num.last == "0"{
//        solArr.removeLast()
//    }
//    return solArr.max() ?? 0
//}

//MARK:- ARRAY ROTATION

public func solution(_ A : [Int], _ K : Int) -> [Int] {
    // write your code in Swift 4.2.1 (Linux)
    var newArr = A
    if A == [] {
        return []
    } else {
        for _ in 0 ..< K {
            newArr.insert(newArr.popLast()!, at: 0)
            print(newArr)
        }
    }
    return newArr
}

print(solution([1,2,3,4,5,6,7,8], 5))
