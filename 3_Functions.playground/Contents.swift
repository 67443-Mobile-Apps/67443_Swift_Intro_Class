//: FUNCTIONS

func greet(name: String, day: String) -> String {
  return "Hello \(name), today is \(day)."
}
greet(name: "Bob", day: "Tuesday")

//** Use a tuple to make a compound value—for example, to return multiple values from a function. The elements of a tuple can be referred to either by name or by number. **//
func calculateStatistics(_ scores: [Int]) -> (min: Int, max: Int, sum: Int) {
  var min = scores[0]
  var max = scores[0]
  var sum = 0
  
  for score in scores {
    if score > max {
      max = score
    } else if score < min {
      min = score
    }
    sum += score
  }
  
  return (min, max, sum)
}
let theData = [5, 3, 100, 3, 9]
let statistics = calculateStatistics(theData)
print(statistics.sum)
print(statistics.2)


//** Functions can also take a variable number of arguments, collecting them into an array. **//
func sumOf(_ numbers: Int...) -> Int {
  var sum = 0
  for number in numbers {
    sum += number
  }
  return sum
}
sumOf()
sumOf(42, 597, 12, 100)

//** Functions can be nested. Nested functions have access to variables that were declared in the outer function. **//
//** You can use nested functions to organize the code in a function that is long or complex. **//
func returnFifteen() -> Int {
  var y = 10
  func add() {
    y += 5
  }
  add()
  return y
}
returnFifteen()

//** Functions are a first-class type. This means that a function can return another function as its value. **//
func makeIncrementer() -> ((Int) -> Int) {
  func addOne(number: Int) -> Int {
    return 1 + number
  }
  return addOne
}
var increment = makeIncrementer()
increment(7)
increment(17)


//** A function can take another function as one of its arguments. **//
func lessThanTen(number: Int) -> Bool {
  return number < 10
}

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
  for item in list {
    if condition(item) {
      return true
    }
  }
  return false
}

var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)
