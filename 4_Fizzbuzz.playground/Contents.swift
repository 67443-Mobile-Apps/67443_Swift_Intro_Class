/**
 Pair up with another person to complete this assignment.
 
 Create a Swift function called fizzbuzz() that takes an integer and returns either:
 -  “Fizz” if the number is divisible by 3,
 -  “Buzz” if divisible by 5,
 -  “FizzBuzz” if divisible by both 3 and 5, or
 -  the number itself as a string if none of these other conditions hold.
 Below you can find a sample of the function being called and what is being returned.
 
 An important caveat: to receive full credit for this problem, you have to write this function _without_ using the _if_ conditional operator. (You can get partial credit using _if_, but look at 2-pattern-matching playground if you need a clue how to do this.)
 */

func fizzbuzz(<#parameters#>) -> <#return type#> {
  <#function body#>

}


// Running the function should yield the following results:

fizzbuzz(1)      // => “1”
fizzbuzz(6)      // => “Fizz”
fizzbuzz(10)     // => “Buzz”
fizzbuzz(15)     // => “FizzBuzz”


// -------------------------------------------------------
// STOP: Do not go beyond here until optionals are covered
// -------------------------------------------------------
























/**
 Pair up with another person to complete this assignment.

 Create a Swift function called fizzbuzzAll() that might take an integer and returns either:
 -  “Fizz” if the number is divisible by 3,
 -  “Buzz” if divisible by 5,
 -  “FizzBuzz” if divisible by both 3 and 5,
 -  the number itself as a string if none of these other conditions hold
 -  prints the message "No integer passed; returning nil" and returns nil if the value argument is missing or is not an integer
 
 Below you can find a sample of the function being called and what is being returned and the starting function (_may need a tweak..._)
*/

func fizzbuzzAll(_ num: Any? = nil) -> String {
  // if the number exists and can be converted to int, then do the usual
  // if not, then print "No integer passed; returning nil" and then actually return nil

  
  
}



// Run earlier tests for new function and it behaves the same
fizzbuzzAll(1)      // => “1”
fizzbuzzAll(6)      // => “Fizz”
fizzbuzzAll(10)     // => “Buzz”
fizzbuzzAll(15)     // => “FizzBuzz”

// Better way to demo with functional programming (coming up)
print(Array(1...10).map{fizzbuzzAll($0)!}.joined(separator: ", "))

// Make sure string fails
fizzbuzzAll("FRED")

// Make sure empty fails
fizzbuzzAll()



