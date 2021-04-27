import UIKit
// MARK:- DAY 9 FIRST ALGORITHM
func horMirror(_ s: String) -> String {
    // your code
    let solution = s.split(separator: "\n").reversed().joined(separator: "\n")
    return solution
}
func vertMirror(_ s: String) -> String {
    // your code
    var solution = ""
    var count = 0
    var solArr = [String]()
    let newArr = s.split(separator: "\n")
    for i in newArr {
        count += 1
        for j in i {
            solution = String(j) + solution
        }
      solArr.append(solution)
      solution = ""
    }
  solution = solArr.joined(separator: "\n")
    return solution
}
// replace the dots with function parameter
func oper(_ t: (String) -> String , _ s: String) -> String {
    // your code
  return t(s)
}

// MARK:- SECOND ALGORITHM

/**
 Trolls are attacking your comment section!

A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.

Your task is to write a function that takes a string and return a new string with all vowels removed.

For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".

Note: for this kata y isn't considered a vowel.
 */

func disemvowel(_ s: String) -> String {
  let vowel = ["a", "A", "e", "E", "i", "I", "o", "u", "U", "O"]
  var sol = s
  for i in vowel {
    sol = sol.split(separator: Character(i)).joined()
  }
  return sol
}


print(disemvowel("What are you, a communist?"))

