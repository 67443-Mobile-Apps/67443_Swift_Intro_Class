//: References vs Values; Classes vs Structs

struct Target {
  var location:String = ""
}

struct Pilot {
  var name:String = ""
  var target = Target()
}

// create two pilots
var luke = Pilot(name: "Luke", target: Target())
var wedge = Pilot(name: "Wedge", target: Target())

// create a target
var target = Target()

// set its location to be the Death Star
target.location = "Death Star"

// tell Luke to attack the Death Star
luke.target = target

// oh no – Wedge is hit! We need to
// tell him to fly home
target.location = "Rebel Base"
wedge.target = target

// report back to base
print(luke.target.location)
print(wedge.target.location)

//** KEY IDEA: Classes passed by reference, structs by values **//
