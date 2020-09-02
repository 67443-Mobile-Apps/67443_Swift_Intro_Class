/**
  Deque playground.  We informally test the deque, but a better and more systematic set of tests
  comes later in the tests portion.  Using the playgrounds is great to experiment early on, but formal
  testing is a must (as you know) and **playgrounds aren't a substitute for a testing suite**.
*/

public struct Deque<T> {
  public var array = [T]()
  
// Suggesstion: convert this to a class later and play with it more...
//  init(array: [T]) {
//    self.array = array
//  }
  
  public var isEmpty: Bool {
    return array.isEmpty
  }
  
  public var count: Int {
    return array.count
  }
  
  public func peekFirst() -> T? {
    return array.first
  }
  
  public func peekLast() -> T? {
    return array.last
  }
  
  mutating func pushBack(_ obj: T) {
    array.append(obj)
  }
  
  mutating func pushFront(_ obj: T) {
    array.insert(obj, at: 0)
  }
  
  mutating func popBack() -> T? {
    return array.popLast()
  }
  
  mutating func popFront() -> T? {
    if array.isEmpty {
      return nil
    } else {
      return array.removeFirst()
    }
  }
}

// INFORMAL TESTING
// Create a deque and put some elements on it already.

// For deque as a class without init (long, not ideal):
//var dequeOfCards = Deque<String>()
//dequeOfCards.pushFront("3ofHearts")
//dequeOfCards.pushBack("10ofSpades")
//dequeOfCards.pushBack("AceofSpades")
//dequeOfCards.pushBack("2ofDiamonds")
//dequeOfCards.pushBack("KingofClubs")

// For deque as a struct, can also do without init:
var dequeOfCards = Deque(array: ["3ofHearts", "10ofSpades", "AceofSpades", "2ofDiamonds", "KingofClubs"])

print(dequeOfCards.array)

//dequeOfCards.array = ["Alex", "Mark", "Rachel", "Kelly"]
//print(dequeOfCards.array)

// Adds an element to the end of the deque.
dequeOfCards.pushBack("9ofHearts")

// Deque is now ["3ofHearts", "10ofSpades", "AceofSpades", "2ofDiamonds", "KingofClubs", "9ofHearts"]
print(dequeOfCards.array)

// Remove and return the first element in the deque. This returns "3ofHearts".
dequeOfCards.popFront()
print(dequeOfCards.array)

// Return the first element in the deque.
// Returns "10ofSpades" since "3ofHearts" was dequeued on the previous line.
dequeOfCards.peekFirst()

// Check to see if the queue is empty.
// Returns "false" since the deque still has elements in it.
dequeOfCards.isEmpty


// Now the question is, how do we create an automated testing suite for this data structure?
