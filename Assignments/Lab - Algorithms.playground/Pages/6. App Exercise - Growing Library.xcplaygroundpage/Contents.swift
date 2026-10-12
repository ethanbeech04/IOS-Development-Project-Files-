/*:
## App Exercise - Growing Library

 >These exercises reinforce Swift concepts in the context of a music streaming app.

 Every song in the app has an ID number. This version of linear search uses a `while` loop to walk through a library of song IDs.
 */



let library = [3, 7, 1, 9, 0, 5]
let targetID = 0

var index = 0
var checks = 0

while index < library.count {
    checks += 1

    if library[index] == targetID {
        break
    }

    index += 1
}

print("Checks to find song \(targetID): \(checks)")


//:  Before you run the calls below, predict how many checks it takes to find song 1 in each library. Write your predictions in a comment.



/*
Predictions for checks to find song 1:

Library size | Checks
10           | 1
100          | 1
1,000        | 1

Assuming song ID 1 is the first song checked in each library.
*/



//:  There is no song with the ID 0. Add three lines below that search for song 0 in `smallLibrary`, `mediumLibrary` and `largeLibrary`. Write the same way as the calls above.

linearSearch(for: 0, in: smallLibrary)
linearSearch(for: 0, in: mediumLibrary)
linearSearch(for: 0, in: largeLibrary)





//:  Fill in the table with what the console printed.



| Library size | Checks to find song 1 | Checks to find song 0 |
| --- | --- | --- |
| 10 | 1 | 10 |
| 100 | 1 | 100 |
| 1,000 | 1 | 1,000 |


//:  In a comment, answer each question. When the library gets 10 times bigger, what happens to the checks in the worst case? If the library had 1,000,000 songs, how many checks would the worst case take? What is the Big-O of linear search?

/*
When the library gets 10 times bigger, the worst-case number of checks
also gets 10 times bigger.

If the library had 1,000,000 songs, the worst case would take
1,000,000 checks.

The Big-O of linear search is O(n), because the number of checks
grows linearly with the size of the library.
*/




/*:
 [Previous](@previous)  |  page 6 of 12  |  [Next: Exercise - Binary Search](@next)
 */
