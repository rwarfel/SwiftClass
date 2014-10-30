// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Dog {
    let name: String
    let color: UIColor
    
    init(name: String, color: UIColor) {
        self.name = name
        self.color = color
    }
    
    class func genus() -> String {
        return "Canis"
    }
    
    func speak() {
        println("Ruff!")
    }
    
    func sit() {
        println("I'm \(name) and I'm sitting")
    }
    
}

let spunky = Dog(name: "Spunky", color: UIColor.whiteColor())

spunky.sit()

spunky.speak()
let dogGenus = Dog.genus()
println("All dogs belong to the \(dogGenus) genus")
println("All dogs belong to the \(Dog.genus()) genus")


let buddy = Dog(name: "Buddy", color: UIColor(hue: 0.1, saturation: 0.4, brightness: 0.8, alpha: 1))
buddy.speak()
buddy.sit()

class Bike {
    let manufacturer: String
    let engineSize: String
    let category: String
    
    init(manufacturer: String, engineSize: String, category: String?) {
        self.manufacturer = manufacturer
        self.engineSize = engineSize
        if category == nil {
            self.category = "Unknown"
        } else {
            self.category = category!
        }
    }
    func rev() {
        println("VROoooom!")
    }
    func honk() {
        println("Beep, beep")
    }
}

let vfr = Bike(manufacturer: "Honda", engineSize: "750cc", category: "Sport")
vfr.rev()
vfr.honk()



