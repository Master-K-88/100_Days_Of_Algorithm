import UIKit


// MARK:- FIRST ALGORITHM FOR DAY 8
func numbersWithDigitInside(_ x: Int64, _ d: Int64) -> [Int64] {
    let num = ( 1 ... x).filter{ ($0 % 1) == 0}
    var arr = [Int64]()
  var result = [Int64]()
    for i in num{
        if String(i).contains("\(d)"){
            arr.append(Int64(i))
        }
    }
    let count = Int64(arr.count)
  if count == 0 {
    return [0, 0, 0]
  } else {
    let sum = Int64(arr.reduce(0,+))
    let mult = Int64(arr.reduce(1,*))
    result = [count, sum, mult]
  }
  return result
}

// MARK:- SECOND ALGORITHM FOR DAY 8

func dontGiveMeFive(_ start: Int, _ end: Int) -> Int {
    (start ... end).filter{!"\($0)".contains("5")}.count
}

print(dontGiveMeFive(1, 40))
//typealias Long = Int64
//
//func numbersWithDigitInside(_ x: Long, _ d: Long) -> [Long]
//{
//    return { [Int64($0.count), $0.reduce(0, +), $0.reduce(0) { if $0 == 0 { return $1 } else { return $0 * $1 } }] }((1...x).filter { $0.description.contains("\(d)") })
//}
