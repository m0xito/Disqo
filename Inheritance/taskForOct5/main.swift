import Cocoa

// Define a base class named Shape. Shape class should have a boolean property to indicate is shape 3 dimensional or not. Define a Square, Rectangle and Cube classes and inherit them from Shape. For each new class set correct value for the property to indicate is class 3 dimensional or not.



class Shape {
    var isThreeDemensional: Bool {
        return false
    }
    
    func describe() {
        print(isThreeDemensional)
    }
}


class Square: Shape {
    
    let width = 3
    
    override func describe() {
        print(width)
    }
    
}


class Rectangle: Shape {
    
    let width = 3
    let height = 4
    
    override func describe() {
        print(width, height)
    }
    
}

class Cube: Shape {
    
    let width = 3
    let height = 4
    let length = 5
    
    
    
    override func describe() {
        print(width, height, length)
    }
    
    
    override var isThreeDemensional: Bool {
        return true
    }
}


// // Extend previous example. Add a method to Shape class and name it describe. Describe method should print  specifications for each shape. For Shape class it should print just the value of the property which indicates is shape 3D or not. Add new properties for Square, Rectangle and Cube. For Square add width, for Cube add width, length, height and for Rectangle add width and height. Override describe method for each one to print full list of properties.




// // Experiment with property overriding and final keyword.


class ForExperimentClass {
    var num = 25.0
    func root() {
        print(sqrt(num))
    }
}


class KeepExperementings: ForExperimentClass {
    override init() {
        super .init()
        self.num = 64.0
    }
    
    override func root() {
        print(sqrt(num) + num)
    }
}

var cdf = KeepExperementings()
cdf.root()

class FinalClass {
    final func nonChangiableProperty() {
        print("We cant override it")
    }
     var availiable = 10
}

class TryToInherit: FinalClass {
    // can not override func nonChangiableProperty
}

