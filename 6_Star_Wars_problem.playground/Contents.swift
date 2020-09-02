//: Star Wars -- Attacking the Death Star

class Target {
  var location:String = ""
}

class Pilot {
  var name: String
  var target: Target
  
  init(name: String) {
    self.name = name
    self.target = Target()
  }
}

// create two pilots
var luke = Pilot(name: "Luke")
var wedge = Pilot(name: "Wedge")

// create a target
var target = Target()

// set its location to be the Death Star
target.location = "Death Star"

// tell Luke to attack the Death Star
luke.target = target

// oh no – Wedge is hit! We need to tell him to fly home
target.location = "Rebel Base"
wedge.target = target

// report back to base
print(luke.target.location)
print(wedge.target.location)


