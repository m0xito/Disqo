//
//  main.swift
//  Big O Notation
//
//  Created by Movses Aghabekyan on 13.10.21.
//

import Foundation

// Constant B(1)
print("Constant")
let arr = [1, 2, 3, 4, 5]
print(arr.first!)


// Linear O(n)
print("Linear")
for i in arr {
    print(i)
}


// Quadratic O(n^2)
print("Quadratic")
let matrixArr = [[1, 2, 3], [4, 5, 6]]

for i in matrixArr {
    for j in i {
        print(j)
    }
}


// Logarithmic O(logn)
print("Logarithms")
func logarithmicTime(N: Int) -> Int {
    var n = N
    var result = 0
    while n > 1 {
        n /= 2
        result += 1
    }
    return result
}

print(logarithmicTime(N: 128))


// O(n log n)
let n = 20

for i in stride(from: 0, to: n, by: 1) {
var j = 1
  while j < n {
    j *= 2
    // do constant time stuff
  }
}
