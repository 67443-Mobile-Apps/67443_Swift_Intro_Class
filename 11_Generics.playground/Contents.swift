//: GENERICS

import Foundation

// simple inspection function for strings
func inspectString(_ value: String) {
  print("Received String with the value: '\(value)'")
}
inspectString("Shake it off")
print("\n")

// similar function for integers
func inspectInt(_ value: Int) {
  print("Received Int with the value: \(value)")
}
inspectInt(51)
print("\n")


// making a generalized version with generics
func inspect<T>(_ value: T) {
  print("Received \(type(of: value)) with the value: \(value)")
}

inspect("Haters gonna hate")
inspect(12)
