import UIKit

//MARK:-
/*
 Two tortoises named A and B must run a race. A starts with an average speed of 720 feet per hour. Young B knows she runs faster than A, and furthermore has not finished her cabbage.

When she starts, at last, she can see that A has a 70 feet lead but B's speed is 850 feet per hour. How long will it take B to catch A?

More generally: given two speeds v1 (A's speed, integer > 0) and v2 (B's speed, integer > 0) and a lead g (integer > 0) how long will it take B to catch A?

The result will be an array [hour, min, sec] which is the time needed in hours, minutes and seconds (round down to the nearest second) or a string in some languages.

If v1 >= v2 then return nil, nothing, null, None or {-1, -1, -1} for C++, C, Go, Nim, Pascal,[] for Kotlin or "-1 -1 -1".
 */


func race(_ v1: Int, _ v2: Int, _ g: Int) -> [Int]? {
  // your code
        if v1 > v2 {
          return nil
        }
        let cons = v2 - v1
        let hr = g/cons
        let min = ((g % cons) * 60) / cons
        let sec = ((g % cons) * 60 % cons ) * 60 / cons
        return [hr, min, sec]
}
// OR
//func race(_ v1: Int, _ v2: Int, _ g: Int) -> [Int]? {
//  // your code
//  return (v1 > v2 ? nil : [g / (v2 - v1), ((g % (v2 - v1)) * 60)/(v2 - v1), ((((g % (v2 - v1)) * 60) % (v2 - v1)) * 60)/(v2 - v1)])
//}


//MARK:-
/*
 All we eat is water and dry matter.

John bought potatoes: their weight is 100 kilograms. Potatoes contain water and dry matter.

The water content is 99 percent of the total weight. He thinks they are too wet and puts them in an oven - at low temperature - for them to lose some water.

At the output the water content is only 98%.

What is the total weight in kilograms (water content plus dry matter) coming out of the oven?

He finds 50 kilograms and he thinks he made a mistake: "So much weight lost for such a small change in water content!"

Can you help him?

Write function potatoes with

int parameter p0 - initial percent of water-
int parameter w0 - initial weight -
int parameter p1 - final percent of water -
potatoesshould return the final weight coming out of the oven w1 truncated as an int.

Example:

potatoes(99, 100, 98) --> 50
 */

func potatoes (_ p0: Int, _ w0: Int, _ p1: Int) -> Int {
    // your code
  let dryMassAct = (w0 * (100 - p0) / (100 - p1))
  return dryMassAct
}
