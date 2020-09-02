//: Playground - noun: a place where people can play

import UIKit

var numbers = [1, 4, 2, 5, 8, 3]

// The parameter from the sort method is actually a closure. The < and > operators
// are defined as functions, which can be referenced as closures.

numbers.sort(<) // this will sort the array in ascending order
numbers.sort(>) // this will sort the array in descending order
numbers

//numbers.sort({ return $0 < $1 })
numbers.sort({ (firstNum:Int, secondNum:Int) in return firstNum < secondNum })

numbers


func square(a:Float) -> Float {
  return a * a
}

func cube(a:Float) -> Float {
  return a * a * a
}

func averageSumOfSquares(a:Float,b:Float) -> Float {
  return (square(a) + square(b)) / 2.0
}

func averageSumOfCubes(a:Float,b:Float) -> Float {
  return (cube(a) + cube(b)) / 2.0
}

func averageOfFunction(a:Float,b:Float,f:(Float -> Float)) -> Float {
  return (f(a) + f(b)) / 2
}

averageOfFunction(3, 4, square)
averageOfFunction(3, 4, cube)

var repeat = averageOfFunction(3, 4, {(x: Float) -> Float in return x * x})
repeat


///////////////////////////////////////////
// Three routes to the same result
let nestedArray = [[1,2,3,4],[6,7,8,9]]

let joined = [].join(nestedArray)
let flattened = nestedArray.flatMap{$0}
let reduced = nestedArray.reduce([], combine: {$0 + $1})

joined
flattened
reduced

