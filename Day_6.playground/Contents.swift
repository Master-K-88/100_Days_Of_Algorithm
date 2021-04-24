import UIKit


//MARK:- FIRST ALGORITHM FOR DAY 6

func countDuplicates(_ s:String) -> Int {
  // code here.
    let str = Array(s.lowercased())
    let strSet = Set(str)
    var count = 0
    for i in strSet {
        if str.firstIndex(of: i) != str.lastIndex(of: i) {
            count += 1
        }
    }
  return count
}
print(countDuplicates("abcdeaaad65444332dBf"))

//MARK:- SECOND ALGORITHM FOR DAY 6
func sumMix(_ arr: [Any]) -> Int {
    var result = 0
    for i in 0 ..< arr.count {
        result += (arr[i] as? Int ?? Int(arr[i] as? String ?? "0"))!
    }
    return result
}

print(sumMix([9, 3, "7", "3"]))
print(sumMix(["5", "0", 9, 3, 2, 1, "9", 6, 7]))
