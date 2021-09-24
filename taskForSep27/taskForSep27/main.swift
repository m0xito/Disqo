import Foundation



// Create an array of strings. Then sort that array by calling .sorted(by: ...) method and provide your own sorting criteria. We will compare strings by their lengths to identify which one is bigger)

let arrOfStrings = ["Iphone", "Samsung", "Xiaomi", "Nokia"]

var size = arrOfStrings.sorted(by: { $0.count < $1.count })
print(size)



// Create an array of strings and sort them by calling sorted(by: ...) method and provide < or > operator as a closure value(sort criteria). This example exists in the book.


var sorted = arrOfStrings.sorted(by: { $0 < $1 })
print(sorted)



// Create a function which receives 2 numbers as arguments and one closure which will be called with the sum value of provided 2 arguments. Your function should calculate the sum and then call closure with that calculated value.

func someFunction(arg1: Double, arg2: Double) -> (Void) {
    
}






