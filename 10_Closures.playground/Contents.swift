//: Closures

// Closures are defined using curly brackets and the in keyword. The syntax for a closure is:
// { (params) -> return_type in statements }

//** Basic example **//
let nums = [1, 3, 5, 7]

func doubler(x:Int) -> Int{
  return(x * 2)
}
// now use map to apply doubler function to each element in nums
let fnDoubledNums = nums.map(doubler)


// shortening this with a closure
let closureDoubledNums = nums.map({ (num:Int) -> Int in return(num * 2) })
closureDoubledNums


// because it's a one-liner, we can drop the explicit returns and Swift can 
// induce the type signature so we can make this even shorter
let closureDoubledNums2 = nums.map({ num in num * 2 })
closureDoubledNums2


// Swift allows us to refer to arguments passed to closure using $0, $1, $2 etc. 
// So in this case, our closure gets passed a single parameter that can be accessed using $0
let closureDoubledNums3 = nums.map({ $0 * 2 })
closureDoubledNums3


// Closure can also be trailing (as in Ruby) so can also write as:
let closureDoubledNums4 = nums.map() { $0 * 2 }
closureDoubledNums4
