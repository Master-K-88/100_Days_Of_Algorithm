import UIKit


import Foundation


func amort(_ rate: Double, _ balance: Double, _ term: Int, _ numPayments: Int) -> String {
    var (b, statement) = (balance, "")
    let r = rate/1200
    let n = r * b
    let d = 1 - pow(1.0 + r, Double(-1 * term))
    let c = n / d
    for _ in 1 ... numPayments {
      let i = b * r
      let p = c - i
      b -= p
      statement = "num_payment \(numPayments) c \(Int(round(c))) princ \(Int(round(p))) int \(Int(round(i))) balance \(Int(round(b)))"
        print(statement)
    }
    return statement
}


//print(amort(7.4, 10215, 24, 20))
print(amort(6, 100000, 360, 1))
print(amort(6, 100000, 360, 12))
print(amort(6, 100000, 360, 12))

// MARK:- ALGORITHM ON BMI
func bmi(_ weight: Int, _ height: Double) -> String {
    // your code
    let bmiPerson = (Double(weight) / pow(height, 2.0))
    return bmiPerson <= 18.5 ? "Underweight" : bmiPerson <= 25.0 ? "Normal": bmiPerson <= 30.0 ? "Overweight" : "Obese"
}

print(bmi(50, 1.80))
print(bmi(80, 1.80))
print(bmi(90, 1.80))
print(bmi(110, 1.80))
print(bmi(50, 1.50))


// MARK:- ROUGH WORK
//func amort(_ rate: Double, _ balance: Double, _ term: Int, _ numPayments: Int) -> String {
//    // your code
//  var solution = ""
//    var r = rate / 1200
//    var c = ((r * balance)/(1 - pow((1.0 + r), Double(-1 * term))))
//    print(c)
// // solution = "num_payment \(numPayments) c \(rate * 100) princ \(c - balance) int \( balance - c)"
//  return solution
//}
