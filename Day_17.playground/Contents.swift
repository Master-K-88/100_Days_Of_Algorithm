import UIKit


func convertFracts(_ l: [(Int, Int)]) -> [(Int, Int)] {

    var commonD = 1
    var newFraction = [(Int, Int)]()
    var finalFractionSet = [(Int, Int)]()

    commonD = l.reduce(1, { $0 * $1.1 })

    // convert fractions to new denominator
    for fraction in l {
        newFraction.append(
            (fraction.0 * commonD / fraction.1, commonD)
        )
    }

    // find the lowest common denominator
    var commonDivider = 0
    for fraction in newFraction {
        commonDivider = gcd(commonDivider, fraction.0)
        commonDivider = gcd(commonDivider, fraction.1)
    }

    // convert fractions to new denominator
    if commonDivider != 0 {
        for fraction in newFraction {
            finalFractionSet.append(
                (fraction.0 / commonDivider, fraction.1 / commonDivider)
            )
        }
    }

    return finalFractionSet
}

func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    while b != 0 {
        (a, b) = (b, a % b)
    }
    return abs(a)
}



func checkChoose(_ m: Int, _ n: Int) -> Int {
    var result: Int = 1
    for i in 0..<n + 1 {
      if result == m {
        return i
      }
      result = result * (n - i) / (i + 1)
    }
    return -1
}
