//
//  main.swift
//  taskForOct12
//
//  Created by Movses Aghabekyan on 07.10.21.
//

import Foundation

// Create class named Base which has one f method which prints text "Base f". Create Derived1 and Derived2 classes which are inherited from Base and override f function so for Derived1 it prints "Derived1 f" and for Derived2 it prints "Derived2 f". Create objects of classes Derived1 and Derived2 and experiment with as and is. Compare objects of Derived1 and Derived2 with each other and with Base via as and is.


class Base {
    
    func f() {
        print("Base f")
    }
    
}

class Derived1: Base {
    
    override func f() {
        print("Derived1 f")
        
    }
}


class Derived2: Base {
    
    override func f() {
        print("Derived2 f")
    }
}


let b = Base()
let d1 = Derived1()
let d2 = Derived2()

print(d1 is Base)
print(d2 is Derived2)
print(d2 is Derived1)


if var d3 = d1 as Base? {
    print("Yes")
} else {
    print("No")
}


if var d3 = d2 as? Derived1 {
    print("Yes")
} else {
    print("No")
}


var d3 = d1 as Base
d3.f() // prints Derived1 as d1 func had been overrided


