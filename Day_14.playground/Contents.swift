import UIKit

func isCubic(_ n: Int) -> Bool {
  var sum = 0
  for d in String(n) {
    let v = d.wholeNumberValue!
    sum += v*v*v
  }
  return sum == n
}

func isSumOfCubes(_ s: String) -> String {
    // your code
  var cubics = [String]()
  var cubicssum = 0
  for word in s.split(separator: " ") {
    let digits = word.filter { $0.isASCII && $0.isNumber }
    print(digits)
    for x in stride(from: 0, to: digits.count, by: 3) {
      let start = digits.index(digits.startIndex, offsetBy: x)
      let end = digits.index(start, offsetBy: 3, limitedBy: digits.endIndex) ?? digits.endIndex
      let val = Int(String(digits[start..<end])) ?? -1
      if isCubic(val) {
        cubics.append(String(val))
        cubicssum += val
      }
    }
  }
  if cubics.count == 0 {
    return "Unlucky"
  } else {
    return cubics.joined(separator: " ") + " " + String(cubicssum) + " Lucky"
  }
  
}



func digPow(for number: Int, using power: Int) -> Int {
    var sum: Int = 0
    var n = Array(String(number))
    for i in 0 ..< n.count {
        sum += Double(pow(Double(String(n[i])), (power + i)))
        }
    let result = Int(sum) % number == 0 ? sum / number : -1

    return result
}

//func digPow(for number: Int, using power: Int) -> Int {
//    let x = "\(number)".compactMap { $0 }.enumerated().map { pow(Double("\($0.element)")!, Double($0.offset + power)) }.reduce(0, +)
//    return Int(x) % number == 0 ? Int(x) / number : -1
//}
print(digPow(for: 92, using: 1))
