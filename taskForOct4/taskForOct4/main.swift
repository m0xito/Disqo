//
//  main.swift
//  taskForOct4
//
//  Created by Movses Aghabekyan on 02.10.21.
//

import Foundation

// Write a class named MyArray. MyArray should have a property of type [Int]. Initialize that property with some values. Then implement subscript for MyArray which in action should just return element from array property.


class MyArray {
    let number = [0, 1]
    subscript(arr: [Int]) -> [Int] {
        get {
            return number
        }
    }
    
}


// Add Matrix class which will receive rows and columns count. Implement subscript operation for Matrix.


class Matrix {
    var grid = [Double]()
    var rows: Int = 5
    var columns: Int = 5
    

    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
    }
    
    subscript(row: Int, column: Int) -> Double {
            get {
                return grid[(row * columns) + column]
            }
            set {
                grid[(row * columns) + column] = newValue
            }
        }

    
}


