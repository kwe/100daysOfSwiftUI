import UIKit


func printHelp(){
    let message = """
Some Help
"""
    print(message)
}

func square(number: Int){
    print(number * number)
}

func sayHello(to name:String){
    print("Hello \(name)")
}

func greet(_ person:String, nicely: Bool = true){
    if nicely == true {
        print("Hello \(person)")
    } else {
        print("Ho no! It's \(person)")
    }
}

func squareMany(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

printHelp()
print(square(number:56))

sayHello(to: "kwe")
greet("Kevin", nicely: false)

squareMany(numbers: 4,6,7)

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("Password was good")
}
catch {
    print("You can't use that password")
}

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
print(myNum)

