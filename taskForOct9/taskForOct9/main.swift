//
//  main.swift
//  taskForOct9
//
//  Created by Movses Aghabekyan on 06.10.21.
//

import Foundation

// Create an enum which conforms to Error protocol. Define 2 error cases in that enum, one error case name should be outOfBounds, for second set name which you want.


enum PossibleErrors: Error {
   
    case outOfBounds
    case ConnectionError
    
}


// Write a function which can throw an error. Function should receive one index parameter and return Int value. Inside function create an array of Ints from 5 elements. Inside the function do checking and if index is out of range then throw outOfRange error defined in the enum. Otherwise return element for that index.




// Write a code with do/catch blocks and inside do block throw second error defined in your enum. Handle it in your catch block and print appropriate message.


