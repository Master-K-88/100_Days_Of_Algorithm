import UIKit

//MARK:- FIND UNIQUE ELEMENT IN AN ARRAY
func findUniq(_ arr: [Double]) -> Double {
    // your code here
    let setArr = Array(Set(arr))
    for i in setArr {
        if (arr.firstIndex(of: i) == arr.lastIndex(of: i)) {return i}
    }
    return 0.0
}

//MARK:- COUNT THE DIGIT
func nbDig(_ n: Int, _ d: Int) -> Int {
    // your code
    var count = 0
    var solArr = [Int]()
    let arr = (0 ... n).filter{($0 % 1 == 0); }
    for i in arr {
        solArr.append(i*i)
    }
    for j in solArr {
        for l in "\(j)" {
            if String(l).contains("\(d)") {
                count += 1
            }
        }
    }
    return count
}
//func nbDig(_ n: Int, _ d: Int) -> Int {
//    return (0...n).map{"\($0 * $0)".filter { $0 == Character("\(d)")}}.flatMap { $0 }.count
//}
