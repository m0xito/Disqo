//
//  main.swift
//  taskForSep29
//
//  Created by Movses Aghabekyan on 28.09.21.
//

import Foundation

// Create one struct and one class to represent a person. Initialize fields of the class/struct via initializer in one case and via directly assigning values after creating the object in another case.

class Person {

    var name: String
    var age: Int
    var surname: String
    
    
    init(name: String, age: Int, surname: String = "") {
        self.name = "Steve"
        self.age = 29
        self.surname = surname
    }
   
}

var person = Person(name: "", age: 0, surname: "Jobs")
print(person.age)




struct IMac {
    var year = 2021
    var color = "Blue"
}

var macBook = IMac(year: 2017, color: "String")

struct Macbook {
    var year: Int?
    var color: String?
}

var macbook = Macbook(year: 2017, color: "Silver")


// Create a simple class which has only one member and experiment with === and !== operators.

class SimpleClass: Equatable {
    static func == (lhs: SimpleClass, rhs: SimpleClass) -> Bool {
        return lhs.mood == rhs.mood
    }
    
    
    var mood = "Great"
}

var mood = SimpleClass()
var mood2 = mood

if mood2 === mood {
    print("The mood is \(mood.mood)")
}
if mood2 == mood {
    print("The same")
}





