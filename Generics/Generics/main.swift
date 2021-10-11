//
//  main.swift
//  Generics
//
//  Created by Movses Aghabekyan on 11.10.21.
//

import Foundation

// Write a generic method named compare. It should get 2 generic parameters and compare them. Define an enum which has 3 cases less, greater, equal. compare method should return that enum's case as a result.




func compare<T: Comparable>(a: T, b: T) -> MoreOrLess {
    
    
    
    if a > b {
        return MoreOrLess.greater
    } else if a == b {
        return MoreOrLess.equal
    } else {
        return MoreOrLess.less
    }
    
    
}


enum MoreOrLess {
    case less
    case greater
    case equal
}


compare(a: 9, b: 9)



// Extend previous example and create a class named Person which has age and weight properties. Define <, > and equal operators. Create 2 instances of Person class and call compare method and print results.


class Person {
    
    
    let age: Int
    let weight: Int
 
    init(age: Int, weight: Int) {
        self.age = age
        self.weight = weight
    }
}

let personOne = Person(age: 18, weight: 75)
let personTwo = Person(age: 15, weight: 55)

compare(a: personOne.age, b: personTwo.age)
compare(a: personOne.weight, b: personTwo.weight)



// Extend pervious example to add type constraint syntax. After your changes compare method should work only with class types and does not work for Int, String, Double etc.

protocol CompareClassProtocol: AnyObject {
    
    func compareProtocols<T: Comparable>(class1: T, class2: T)
    
    
}











// Define a generic class named Multiplicator. Declare 2 properties inside it and init them via initializer. Define multiply method which should return the result of multiplication of the defined 2 properties.


class Multiplicator<T: Numeric> {
    let prop1: T
    let prop2: T
    
    init(prop1: T, prop2: T) {
        self.prop1 = prop1
        self.prop2 = prop2
    }
    
    func multiply() -> T {
        return prop1 * prop2
    }
    
}


let mult = Multiplicator(prop1: 5, prop2: 2)
print(mult.multiply())



