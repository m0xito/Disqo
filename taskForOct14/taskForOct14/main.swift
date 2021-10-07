//
//  main.swift
//  taskForOct14
//
//  Created by Movses Aghabekyan on 07.10.21.
//

import Foundation

// Add extension to Int. Inside that extension add function named square which will return square of that number.

extension Int {
    //var km: Double { return self * 1_000.0 }
    func square() -> Int {
        return self * self
    }
}

var num = 5.square()
print(num)


// Create a class named Example. Inside that class declare a property of type Int named age. Create an extension for Example class and add a function which will print the value of age.


class Example {
    
    var age: Int
    
    init(age: Int) {
        self.age = age
    }
    
  
}

extension Example {
    func printAge() {
        print("\(self.age) years old")
    }
}



var inst = Example(age: 18)
print(inst.printAge())
