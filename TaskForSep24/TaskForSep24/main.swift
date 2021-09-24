import Foundation

// Create a function which gets string as a value and return the number of 'a' or 'A' symbols in it.

func count(_ str: String) -> Int {
    var number = 0
    for i in str {
        if (i == "a") || (i == "A") {
            number += 1
        }
    }
    return number
    
}

print(count("Anna")) // 2


// Modify function defined in the 1st point of the homework. Add new boolean parameter which will indicate should we calculate uppercase or lowercase 'a' symbol.


func count2(_ str: String, isUppercase: Bool) -> Int {
    var counter = 0
    
    let symbol: Character = isUppercase ? "A" : "a"
    for i in str {
        if i == symbol {
            counter += 1
        }
    }
    return counter

}

print(count2("Margarita", isUppercase: false))




// Modify 1st point of the homework. Add multiple return values to the function so it can return the number of 'a' and 'A' symbols separately.


func count3(_ str: String) -> (Int, Int) {
    var count = (0, 0)
    for i in str {
        if i == "a" {
            count.0 += 1
        } else if i == "A" {
            count.1 += 1
    }
}
    return count

}

print(count3("Alexandra"))


// Experiment with argument labels and parameter names.

func factorial(of num: Int) -> Int {
    var factorial = 1
    var temp = num
    while temp > 1 {
        factorial *= temp
        temp -= 1
    }
    return factorial

}

print("Factorial of 8 is \(factorial(of: 5))")


// Experiment with default parameter values.

func Triangle(base: Double = 10, height: Double = 4) -> Double {
    let area = 0.5 * (base * height)
    return area
}

let recArea = Triangle(base: 2, height: 8)
print("Triangle area is \(recArea)")
    
let recArea2 = Triangle(base:2)
print("Triangle area is \(recArea2)")

// Write a function which has one in-out parameter of type string. Function must modify input parameter and remove all 'a' symbols. After calling the method print variable which was passed to the function.


/*
 var name = "Mariam"

func gotMessage(_ title: String, from name: inout String) -> String {
    var title2 = title
    title2.append(name)
    return title2
}

print(gotMessage("I got message from ", from: &name))
*/


var phrase = "alibabu"

/*func modify(phrase: inout String) -> String {
    var phrase2 = phrase
    var set: Set<Character> = ["a"]
    phrase2.removeAll(where: { set.contains($0) })
    return phrase2
}
*/

/* func modify(phrase: inout String) -> String {
    let letter: Set<Character> = ["a"]
    phrase.removeAll(where: { letter.contains($0) } )
    return phrase
}
 */

func modifiedString(phrase: inout String) {
     phrase.removeAll {$0 == "a"}
}
modifiedString(phrase: &phrase)
print(phrase)




// Define a function type which has 2 input int parameters and return an int. Create a function of that type and call it.

func nums(num1: Int, num2: Int) -> Int {
    return num1 + num2
}

var mathfunction: (Int, Int) -> Int = nums
print(mathfunction(40, 2))


// Write a function which returns a function which compares 2 integers. Call first method to get comparator and later use comparator.

func function() -> Int {
    
    func comparator(_ int1: Int, _ int2: Int) -> Int {
        let list = [int1, int2]
        return list.max()!
    }
    return comparator(3, 43)
}

print(function())


// Experiment with nested functions.


func nestedFunc1(a: Int, b: Int) -> Int {
    
    func nestedFunc2() {
        print(a, b)
    }
    
    nestedFunc2()
    
    return a + b
}

print(nestedFunc1(a: 3, b: 4))

