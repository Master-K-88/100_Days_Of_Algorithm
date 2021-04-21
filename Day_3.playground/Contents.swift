import UIKit
import Foundation

//MARK:- FIRST QUESTION -> PERSISTENCE
func persistence(for num: Int) -> Int {
    var newNum = String(num)
    var count = 0
    while newNum.count > 1 {
        var solution = 1
        for i in newNum{
            solution *= Int(String(i))!
        }
        count += 1
        newNum = String(solution)
    }
    
   return count
}
var a = persistence(for: 367)
print(a)

//MARK:- SECOND QUESTION -> REPEATED STRING
func repeatStr(_ n: Int, _ string: String) -> String {
  // Code here:
    var arrStr = [String]()
    for _ in 0 ..< n {
        arrStr.append(string)
    }
    return arrStr.joined()
}
print(repeatStr(5, "Hello"))
