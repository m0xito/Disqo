//
//  main.swift
//  taskForSep30
//
//  Created by Movses Aghabekyan on 30.09.21.
//

import Foundation

// Create a class which has only one property which is let. Create class instance and initialize that let property properly.

class SimpleClass {
    let name = ""
    
    init(_ name: String) {
        self.name = name
    }
    
    func printName() {
        print("Hi I am \(name)")
    }
}

let simpleClass = SimpleClass("Tom")
simpleClass.printName()


// Create a class which has one Int property. Write getter and setter for that property. Both getter and setter should print the text like "Setter called", "Getter called".





class IntClass {
     var num = 4
    var getter: Int {
        get {
            print("Getter called")
            return num * 23
        }
        set {
            print("Setter called")
            num = newValue / 2
                    
        }
    

    }


}

var res = IntClass()

print(res.getter)

res.getter = 44
print(res.num)



// Create a class which has 2 Int properties and one read-only computed property. That property should return the sum of 2 Int properties. Create class instance and print the value of computed property.

class Sum {
    var num1 = 15
    var num2 = 2
    
    var num3: Int {
        get {
            num1 + num2
        }
    }
}


var inst = Sum()
print(inst.num3)



// Create a class which has one Int property. Use willSet and didSet to print the text to indicate that property is going to be changed.


class AnotherOneClass {
    var number = 15 {
        willSet {
            print("\(newValue) is new value")
        }
        didSet {
            print("\(oldValue) is old value")
        }
    }
    
}

var change = AnotherOneClass()


change.number = 23

print(change.number)

