//
//  main.swift
//  taskForSep28
//
//  Created by Movses Aghabekyan on 27.09.21.
//

import Foundation

// Create an enum for compass directions(north, east ...) and then use that enum in switch/case to print each direction for specific enum case. For instance print text can be in this format "Your direction is north".




enum Compas {
    case north
    case south
    case west
    case east
}


var direction = Compas.north

switch direction {
case .north:
    print(" It is notrh ")
case .south:
    print(" It is notrh ")
case .west:
    print(" It is notrh ")
default:
    print(" It is east ")
}


// For the created compass enum adapt CaseIterable protocol and print the number of cases in enum.



enum Compas2: CaseIterable  {
    case north
    case south
    case west
    case east
}

var numOfCases = Compas2.allCases.count

print("The number of cases is \(numOfCases)")


// Add changes to make compass enum support numbers. Assign int values to enum cases for instance 1 can be 1st value. Print int values for each case using rawValues.


enum Compas3: Int, CaseIterable {
    case north = 1
    case south
    case west
    case east
}

for i in Compas3.allCases {
    print(i.rawValue)
}


