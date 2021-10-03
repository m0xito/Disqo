import Cocoa


class AnotherClass {
    var number: Int
    
    init!(_ number: Int) {
        self.number = number
        if number >= 0 {
            self.number = number
        }
        
    }
}

var anotherCLass = AnotherClass(5)
