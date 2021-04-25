import UIKit

func findDifference(_ a: [Int], _ b: [Int]) -> Int {
  //  Your code here!
  return abs(b.reduce(1, *) - a.reduce(1, *))
}

//
func chooseBestSumSub(_ t: Int, _ k: Int, _ ls: [Int], _ from: Int) -> Int {
    if k == 0 {return t >= 0 ? 0 : t}
    else {
        if t < k {return -1}
    }
    var temp: Int = -1
    var tmpTemp: Int
    for i in from..<ls.count {
        tmpTemp = chooseBestSumSub(t - ls[i], k - 1, ls, i + 1)
        if tmpTemp >= 0 {
            temp = max(temp, ls[i] + tmpTemp)
        }
    }
    return temp
}
func chooseBestSum(_ t: Int, _ k: Int, _ ls: [Int]) -> Int {
    return chooseBestSumSub(t, k, ls, 0)
}
//
//
var ts = [50, 55, 56, 57, 58]
print(chooseBestSum(163, 3, ts)) //, 163)


