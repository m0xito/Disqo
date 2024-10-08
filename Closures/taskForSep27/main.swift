import Foundation



// Create an array of strings. Then sort that array by calling .sorted(by: ...) method and provide your own sorting criteria. We will compare strings by their lengths to identify which one is bigger)

let arrOfStrings = ["Iphone", "Samsung", "Xiaomi", "Nokia"]

var size = arrOfStrings.sorted(by: { $0.count < $1.count })
print(size)



// Create an array of strings and sort them by calling sorted(by: ...) method and provide < or > operator as a closure value(sort criteria). This example exists in the book.


var sorted = arrOfStrings.sorted(by: <)
print(sorted)



// Create a function which receives 2 numbers as arguments and one closure which will be called with the sum value of provided 2 arguments. Your function should calculate the sum and then call closure with that calculated value.

func sumOfNums(arg1: Int, arg2: Int, _ closure: (Int) -> (Void))  {
    closure(arg1 + arg2)
}
var closure: (Int) -> (Void) = { num in
    print(num)
}
sumOfNums(arg1: 5, arg2: 10, closure)

// Prepare the scenario(just few sentence paragraph) where you will describe how and when escaping closures can be used.

/* Escaping closure can be used for example if we are sending some files to someone while we are writing to someone at the same time.
 When a closure is marked as escaping in Swift, it means that the closure will outlive, or leave the scope that you've passed it to .
 
 */








