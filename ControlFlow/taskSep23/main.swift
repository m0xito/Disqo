import Foundation


// Create an array and experiment with for-in loops

let arr = [65, 28, 39.0, 42]
for i in arr {
    print(i+8)
}

// Create an array and experiment with while loops

let num = 50
for i in arr {
    while i > 40{
        print(i)
        break
    }
}


// Create an array and count the number of elements which values are lower than 50 and which values are more than 50.

let array = [4, 23, 97, 97, 97, 23]

for i in array{
    if i < 50 {
        print("\(i) less than 50")
    } else {
        print("\(i) more than 50")
    }
}

// Create an array and count number of elements which values are equal to 1 and 2 using switch statement


let arrayOfNums = [1, 2, 3, 1, 2, 3, 2]
var countOne = 0
var countTwo = 0

for i in arrayOfNums {
    switch i {
    case 1:
        countOne += 1
    case 2:
        countTwo += 1
    default:
        print(" ")
    }
}

print(countOne)
print(countTwo)

// Experiment with intervals in switch

let x = 10
switch x {
case 1...Int.max:
    print("positive")
case Int.min..<0:
    print("negative")
case 0:
    print("zero")
default:
    break
}

// Experiment with control transfer statements

let nums = [1, 2, 3, 4, 5, 6, 7]
for i in nums {
    if i % 2 == 0 {
        continue
    }
    print(i) // prints odds

}

for i in nums {
    if i % 2 != 0 {
        continue
    }
    print(i) // prints evens
}

