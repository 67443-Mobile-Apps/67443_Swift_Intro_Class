//: Enumerations and Structures

//** Using raw values associated with each **//
enum Rank: Int {
  case Ace = 1
  case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
  case Jack, Queen, King
  func simpleDescription() -> String {
    switch self {
    case .Ace:
      return "ace"
    case .Jack:
      return "jack"
    case .Queen:
      return "queen"
    case .King:
      return "king"
    default:
      return String(self.rawValue)
    }
  }
}
let ace = Rank.Ace
let aceRawValue = ace.rawValue

let queen = Rank.Queen
let queenRawValue = queen.rawValue



//** Straight-up enum **//
enum Suit {
  case Spades, Hearts, Diamonds, Clubs
  func simpleDescription() -> String {
    switch self {
    case .Spades:
      return "spades"
    case .Hearts:
      return "hearts"
    case .Diamonds:
      return "diamonds"
    case .Clubs:
      return "clubs"
    }
  }
}
let hearts = Suit.Hearts
let heartsDescription = hearts.simpleDescription()


//** Pulling that into a structure **//
struct Card {
  var rank: Rank
  var suit: Suit
  func simpleDescription() -> String {
    return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
  }
}
let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
print(threeOfSpadesDescription)


//** Enums in switch statements **//
enum WeatherType {
  case Cloudy(coverage: Int)
  case Sunny
  case Windy
}

var today = WeatherType.Cloudy(coverage: 90)

switch today {
case .Cloudy(let coverage):
  print("It's cloudy with \(coverage)% coverage")
case .Windy:
  print("It's windy")
default:
  print("It's sunny")
}

today = WeatherType.Cloudy(coverage: 100)

switch today {
case .Cloudy(let coverage) where coverage < 100:
  print("It's cloudy with \(coverage)% coverage")
case .Cloudy(let coverage) where coverage == 100:
  print("It's probably winter in Pittsburgh")
case .Windy:
  print("It's windy")
default:
  print("It's sunny")
}

