//
//  main.swift
//  taskForOct6
//
//  Created by Movses Aghabekyan on 03.10.21.
//

import Foundation

// Create a struct named Person. Add some properties to define person. Implement initializer to init all properties of Person struct.


struct Person {
    var name: String
    var age: Int
    
    
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}


// Create a Person2 struct which has 2 properties, age and name. Add 2 init methods. One should get 2 parameters to init age and name. Second init method should only get 1 parameter and init another parameter with some default value inside init.


struct Person2 {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    init(age: Int) {
        self.age = age
        self.name = ""
    }
}


// Create a class with 2 properties where one of them is optional. Add init method and experiment with the number of arguments init receives. Try to have init with 2 parameters then one. Understand why it's ok to have init with only one parameter (not for optional one).


class SomeClass {
    var height: Int
    var weight: Int?
    
    init(height: Int, weight: Int) {
        self.height = height
        self.weight = weight
    }
    
    init(height: Int) {
        self.height = height
        self.weight = 0
    }
    
    init(weight: Int) {
        self.weight = weight
        self.height = 0
    }
    
    init() {
        self.weight = 1
        self.height = 1
    }
}

var someCLass = SomeClass()
print(someCLass.weight ?? 0)
print(someCLass.height)

// Create a class with  initializer which can fail. Init should receive one Int argument. If number is less than 0 initializer should fail. If it's greater than or equal to zero initializer should init property of the class



class Product {
    let number: Int
    init?(number: Int) {
        if number < 0 {
            return nil
        }
            self.number = number
        }
}



var product = Product(number: -4)
print(product?.number)



// Define a Shape class which has one boolean property to indicate is shape 3D or not. Write an init for Shape class to initialize the only property it has. Write a Rectangle class and inherit it from Shape. Add init for rectangle to initialize its width and height properties. Also inside Rectangle's init call Shape's init and initialize it with correct value for 3D property.


class Shape {
    var threeDimensional: Bool
    init(threeDimensional: Bool) {
        self.threeDimensional = threeDimensional
    }
}

class Rectangle: Shape {
    var width: Int
    var height: Int
    
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
        super.init(threeDimensional: false)
    }
    
}
