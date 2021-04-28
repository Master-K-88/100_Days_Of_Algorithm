import UIKit
import Foundation
func century(_ year: Int) -> Int {
    // your code here
  (year / 100 + (year % 100 != 0 ? 1 : 0))
}

//MARK:- SECOND ALGORITHM FOR THE 100 DAYS OF ALGORITHM
//This time no story, no theory. The examples below show you how to write function accum:
//
//Examples:
//
//accum("abcd") -> "A-Bb-Ccc-Dddd"
//accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
//accum("cwAt") -> "C-Ww-Aaa-Tttt"
//The parameter of accum is a string which includes only letters from a..z and A..Z.

func accum(_ s: String) -> String {
  var solution = ""
    let num = s.count
    var counter = 0
    for l in s{
        counter += 1
        for _ in 0 ..< 1 {
            solution += repeatElement(l, count: counter)
        }
        solution = solution.capitalized
      if counter != num {
         solution += "-"
      }
    }
  return solution
}


//func accum(_ str: String) -> String {
//    return str.enumerated().map { repeatElement(String($1), count: $0 + 1).joined().capitalized }.joined(separator: "-")
//}
//print(accum("abcd"))
