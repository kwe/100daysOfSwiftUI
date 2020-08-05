import UIKit

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]


let heights = [
    "Taylor Swift":1.78,
    "Ed Sheeran": 1.73
]

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["kwe", default: "Unknown"]

var teams = [String: String]()

teams["Paul"] = "Red"

var results = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var altResults = Array<Int>()

enum Result {
    case success
    case failure
}

let result4 = Result.success

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "Something Interesting")

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
