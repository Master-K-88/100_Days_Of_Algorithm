import UIKit

//MARK:- FIRST ALGORITHM FOR DAY 5
func revRot(_ s: String, _ c: Int) -> String {
    // your code
    var arr = [String]()
    var arrResult = [String]()
    var count: Int = 0
    var str: String = ""
    var temp: Int = 0
    var n: Double
    for i in s {
        str += "\(i)"
        count += 1
        if count == c{
            arr.append(str)
            count = 0
            str = ""
        }
    }
    for j in arr {
        temp = 0
        n = 0
        for k in j{
            n = Double("\(k)")!
            temp += Int(pow(n, 3.0))
        }
        if temp % 2 == 0{
            str = ""
            for l in j {
                str = "\(l)" + str
            }
            arrResult.append(str)
        } else {
            arrResult.append(String(j.suffix(j.count - 1) + j.prefix(1)))
        }
    }
    return arrResult.joined()
}
print(revRot("73304991087281576455176044327690580265896", 8))

//MARK:- SECOND ALGORITHM FOR DAY 5

func angle(_ n: Int) -> Int {
    // your code here
  return ((n - 2)*180)
}
angle(8)
