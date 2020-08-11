import UIKit

var str = "Hello, playground"

let driving = {
    print("I've been driving on my car")
}
driving()

let driving2 = { (place: String) in
    print("I've been driving to \(place)")
}

driving2("Caerphilly")

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

print(drivingWithReturn("Carmathen"))

func travel(action: ()->Void) {
    print("I'm getting ready to go.")
    action()
    print("I've arrived")
}

travel(action:driving)

travel {
    print("So this is the function I'm passing")
}

func travel2(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel2 { (place: String) in
    print("I'm a function with a param of \(place)")
}

func travel3(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel3 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

travel3 { place in
    return "I'm going to \(place) in my car"
}

travel3 { place in
    "I'm going to \(place) in my car"
}

travel3 {
    "I'm going to \($0) in my car"
}

func travel4(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel4 {
    "I'm going to \($0) at \($1) miles per hour."
}
