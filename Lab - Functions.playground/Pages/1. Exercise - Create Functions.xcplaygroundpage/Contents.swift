/*:
## Exercise - Create Functions

 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */


//:  Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
import Foundation

func introduceMyself() {
    print( "Hello my names Ethan and my favorite color is light blue")
}

var randomNumber = Int.random(in: 0...4)
func magicEightBall(randomNumber: Int) -> String {
    switch randomNumber {
    case 1:
        return "No"
    case 2:
        return "Yes"
    case 3:
        return "No"
    case 4:
        return "Yes"
    case 0: 
    default: "error"
    
    }
    }
/*:
page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
 */
