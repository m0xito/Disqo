//
//  main.swift
//  taskForOct11
//
//  Created by Movses Aghabekyan on 06.10.21.
//

import Foundation



// Create an enum which conforms to Error protocol. Define 2 error cases in that enum, one error case name should be outOfBounds, for second set name which you want.

enum Errors: Error {
    
    case outOfBounds
    case mathError
}


// Write a function which can throw an error. Function should receive one index parameter and return Int value. Inside function create an array of Ints from 5 elements. Inside the function do checking and if index is out of range then throw outOfRange error defined in the enum. Otherwise return element for that index.


    

func throwPossibleError(index: Int) throws  -> Int {
    let arr = [0, 1, 2, 3, 4]
    
    if index < arr.count {
        return arr[index]
    } else {
        throw Errors.outOfBounds
    }
        
}
print(try throwPossibleError(index: 4)) // crushs if index is more than 4


// Write a code with do/catch blocks and inside do block throw second error defined in your enum. Handle it in your catch block and print appropriate message.



func division(num1: Int, num2: Int) throws -> Int {
    
    if num2 == 0 {
            throw Errors.mathError
        }
            
            return num1 / num2
 
}


do {
    try division(num1: 5, num2: 0)
    
} catch {
    print("Got an error \(error)")
}





