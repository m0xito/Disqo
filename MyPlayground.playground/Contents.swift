import Cocoa

//struct Point {
//    var x = 0.0, y = 0.0
//    func isToTheRightOf(x: Double) -> Bool {
//        return self.x > x
//    }
//}
//
//let some = Point(x: 3.0, y: 4.0)
//print(some.isToTheRightOf(x: 2.0))


//struct Point {
//    var x = 0.0, y = 0.0
//    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
//        x += deltaX
//        y += deltaY
//    }
//}
//var somePoint = Point(x: 1.0, y: 1.0)
//somePoint.moveBy(x: 2.0, y: 3.0)
//print("The point is now at (\(somePoint.x), \(somePoint.y))")




//struct Point {
//    var x = 0.0, y = 0.0
//    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
//        self = Point(x: x + deltaX, y: y + deltaY)
//    }
//}
//
//
//var some = Point(x: 5.0, y: 4.0)
//some.moveBy(x: 5.0, y: 6.0)
//print(some)



//enum TriStateSwitch {
//    case off, low, high
//    mutating func next() {
//        switch self {
//        case .off:
//            self = .low
//        case .low:
//            self = .high
//        case .high:
//            self = .off
//        }
//    }
//}



//struct Point {
//    var x = 0.0, y = 0.0
//    mutating func moveBy(a deltaX: Double, b deltaY: Double)  {
//        x += deltaX
//        y += deltaY
//    }
//}
//
//var point = Point(x: 1.0, y: 2.0)
//point.moveBy(a: 2.0, b: 4.0)
//
//print(point)


enum Switch {
    case off
    case low
    case high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}

var sw = Switch.off
sw.next()
print(sw)
