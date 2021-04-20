import UIKit

import Foundation


//MARK:- FIRST ALGORITHM FOR DAY 2
func reverseSeq(n: Int) -> [Int] {
  return (1 ... n).reversed()
}
print(reverseSeq(n: 9))


//MARK:- SECOND ALGORITHM

func inArray(_ a1: [String], _ a2: [String]) -> [String] {
    // your code
    var solution = [String]()           //Solution in array form
    for i in 0 ..< a1.count {           // looping through the first array
        for j in a2 {
            if j.contains(a1[i]) {      // looping through the content of the second array
                solution.append(a1[i])  // storing in the solution array if any
                break                   // jumping out of the loop
            }
        }
    }
  if a1 == a2 {                         // Checking if array 1 and array 2 are identical
    solution = ["duplicates"]           // Indicating they are duplicates or identical
  }
    return solution.sorted()
}

var a1 = ["live", "arp", "strong"]
var a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

print(inArray(a1, a2))
