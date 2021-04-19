import UIKit


// MARK:- SOLUTION TO 1ST ALGORITHM FOR THE DAILY CHALLENGE
func beggars(_ values: [Int], _ n: Int) -> [Int] {
    var solution = [Int]()
    var count = 0
    var d = 0
    if n > 0{
        for i in values {
            solution.append(i)
            count += 1
            if count == n{
                break
            }
        }
        if count < values.count {
            count = 0
            for j in n ..< values.count {
                solution[count] += values[j]
                count += 1
                if count == (n) {
                    count = 0
                    continue
                }
            }
        } else if count == values.count && count < n {
            d = n - count
            for _ in 0 ..< d {
                solution.append(0)
            }
            return solution
        }
    }
    return solution

}
print(beggars([1,2,3,4,5],7))
print(beggars([1,2,3,4,5],2))

//MARK:- SQUARE EACH DIGIT THEN COMBINE THEM
func squareDigits(_ num: Int) -> Int {
    let nums = String(num)
    var solution = ""
    for i in nums {
        solution += String(Int(String(i))! * Int(String(i))!)
    }
    return Int(solution)!
}
