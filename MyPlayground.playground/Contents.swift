import Cocoa


//func filterNumbersWithoutClosure(value: Int, numbers: [Int]) -> [Int] {
//    var filteredNumbers: [Int] = []
//    for num in numbers {
//        if num < value {
//            filteredNumbers.append(num)
//        }
//    }
//    return filteredNumbers
//}
//
//var filtered = filterNumbersWithoutClosure(value: 5, numbers: [1, 2, 3, 4, 5, 6, 7, 8, 9, 19])
//
//print(filtered)

//func filteredNumbersWithClosure(closure: (Int) -> Bool, numbers: [Int]) -> [Int] {
//    var filteredNumbers: [Int] = []
//    for num in numbers {
//        if closure(num) {
//            filteredNumbers.append(num)
//        }
//    }
//    return filteredNumbers
//}
//
//print(filteredNumbersWithClosure(closure: { num in
//    return num < 5
//}, numbers: [1,2,3,4,5,6]))
//
//func greaterThanThree(value: Int) -> Bool {
//    return value > 3
//}
//
//let filtered = filteredNumbersWithClosure(closure: greaterThanThree, numbers: [1, 2, 3, 4])
//
//print(filtered)



//func filterClosure(closure: (Int) -> Bool, numbers: [Int]) -> [Int] {
//    var filteredNumbers: [Int] = []
//    for num in numbers {
//        if closure(num) {
//            filteredNumbers.append(num)
//        }
//    }
//    return filteredNumbers
//}
//
//func divisibleBy5(value: Int) -> Bool {
//    return value % 5 == 0
//}
//
//
//var filter = filterClosure(closure: divisibleBy5, numbers: [1, 5, 10, 20, 21])
//
//
//print(filter)

//
//var customersInLine = ["Valod", "Poghos", "Exish", "Peto", "Knyaz"]
//print(customersInLine.count)
//
//let serveCustomer = {
//    return customersInLine.removeFirst()
//    // the same ^^^^^
//    // customersInLine.remove(at: 0)
//}
//
//print(customersInLine.count)
//
//print(serveCustomer())
//print(customersInLine.count)



//import AppKit
//
//func downloadImage(from url: URL,
//                   onCompletion: @escaping (NSImage) -> (),
//                   onFailure: @escaping (Error) -> ()) {
//
//    let task = URLSession.shared.dataTask(with: url, completionHandler: { data, _, error in
//        if let error = error {
//            onFailure(error)
//        } else if let data = data, let image = NSImage(data: data) {
//            print(image)
//            onCompletion(image)
//        } else {
//            onFailure(NSError(domain: "error", code: 0))
//        }
//    })
//
//    task.resume()
//}


//func makeIncrementer(forIncrement amount: Int) -> () -> Int {
//    var runningTotal = 0
//
//    func incrementer() -> Int {
//        runningTotal += amount
//        return runningTotal
//    }

//    the same ^^^^
//    let incrementer = { () -> Int in
//        runningTotal += amount
//        return runningTotal
//    }

//    return incrementer
//}
//
//let incremntByTwenty = makeIncrementer(forIncrement: 20)
//print(incremntByTwenty())
//print(incremntByTwenty())
//print(incremntByTwenty())
//
//let incremntByThirty = makeIncrementer(forIncrement: 30)
//print(incremntByThirty())
//print(incremntByThirty())
//print(incremntByThirty())
//
//let alsoIncremntByTwenty = incremntByTwenty
//print(alsoIncremntByTwenty())
//print(incremntByTwenty())



//let list = [3, 6, -2, -5, 7, 3]
//var product = 1
//for i in list {
//    product *= i
//}


// Create an enum for compass directions(north, east ...) and then use that enum in switch/case to print each direction for specific enum case. For instance print text can be in this format "Your direction is north".



