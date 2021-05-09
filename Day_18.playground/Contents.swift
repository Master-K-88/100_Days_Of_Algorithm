import Foundation
//
//
////func smallest(_ n: Int) -> (Int, Int, Int) {
////  // your code
////    var numStr = Array(String(n))
////    var smallest: Character = numStr[1]
////    var index: Int = 0
////    var posit = 0
//////    let temp: Character = numStr[0]
////    for i in 1 ..< numStr.count - 1 {
////        if smallest >= numStr[i] {
////            smallest = numStr[i]
////            index = i
////        }
////    }
////    numStr.remove(at: index)
////    if numStr[0] >= smallest{
////        numStr.insert(smallest, at: 0)
////    }
////    else {
////        numStr.insert(smallest, at: 1)
////        posit = 1
////    }
////    var newNum = ""
////    for i in numStr {
////        newNum = newNum + "\(i)"
////    }
////    let result = Int(newNum)
////    return (result!, index, posit)
////}

func weight(_ num: String) -> Int {
    return num.compactMap{Int(String($0))}.reduce(0, +)
}
func comp(_ l: String, _ r: String) -> Bool {
    let l1 = weight(l)
    let r1 = weight(r)
    if l1 == r1 {
        return l < r
    } else {
        return r1 > l1
    }
}
func orderWeight(_ s: String) -> String {
    var ss = s.split(separator: " ").map(String.init)
    ss = ss.sorted(by: { comp($0, $1) })
    return ss.joined(separator: " ")
}


//func smallest(_ n: Int) -> (Int, Int, Int) {
//    var min = n
//    var i = 0
//    var j = 0
//    for removeIndex in n.description.characters.indices {
//        var strN = n.description
//        let digit = strN.remove(at: removeIndex)
//        for insertIndex in n.description.characters.indices {
//            var newStrN = strN
//            newStrN.insert(digit, at: insertIndex)
//            if Int(newStrN)! < min {
//                min = Int(newStrN)!
//                i = newStrN.distance(from: newStrN.startIndex, to: removeIndex)
//                j = newStrN.distance(from: newStrN.startIndex, to: insertIndex)
//            }
//        }
//    }
//    return (min, i, j)
//}

func smallest(_ n: Int) -> (Int, Int, Int) {
  var result = (n, 0, 0)
  let array = String(n).compactMap({ Int(String($0)) })
  
  for i in 0..<array.count {
    for j in 0..<array.count {
      var arrayCopy = array
      arrayCopy.insert(arrayCopy.remove(at: i), at: j)
      let value = Int(arrayCopy.reduce("", { $0 + String($1) }))!
      if value < result.0 {
        result = (value, i, j)
      }
    }
  }
  return result
}

