import Foundation

// Create a struct called Student which has 2 properties student name and grade. Create a class which has an array of Students and has method to add new student to this array, method to remove all students and method to print current list of students.

struct Student {
    var name: String
    var grade: Int
}

class Students {
    var arrOfStudents = [Student]()
    
    func addNewStudent(student: Student)  {
        arrOfStudents.append(student)
    }
    
    func removeStudents()  {
        arrOfStudents.removeAll()
    }
    
    func printStudents() {
        print(arrOfStudents)
    }
}

let person = Student(name: "Mrdo", grade: 12)
let student = Students()

print(student.addNewStudent(student: person))



// Create a class which has one Int property and one method which increment that property value. Experiment with self when accessing property.

class SimpleClass {
    var num: Int
    
    init(_ num : Int) {
        self.num = num
    }
    
    func incrementor() {
        self.num += 1
    }
}

var inc = SimpleClass(99)
inc.incrementor()
print(inc.num)
inc.incrementor()
inc.incrementor()

print(inc.num)




// Create a struct which has 2 Int properties. Experiment with mutating keyword for struct's method which modifies that properties.
struct Mutant {
    var num1: Int
    var num2: Int
    
    mutating func increment() {
        num1 += 1
        num2 += 2
    }
    
}


var mutate = Mutant(num1: 4, num2: 5)
mutate.increment()
print(mutate)





// Create a class which has 2 Int properties. One of the properties should be static. Also create 2 methods and make one of them static. Experiment with static method non static property and static property non static method usage. Also experiment with static method and static property.

class ExperimentWithStatic {
    static var maxHeight = 3
    var regularPersonHeight: Int
    
    init(regularPersonHeight: Int) {
        self.regularPersonHeight = regularPersonHeight
    }
    
    func checkMaxHeight()  {
        if regularPersonHeight > ExperimentWithStatic.maxHeight {
            ExperimentWithStatic.maxHeight = regularPersonHeight
        }
        
    }
    
    static func printHighestMan() {
        print("The height of the highest man in the world is \(ExperimentWithStatic.maxHeight)")
    }
    
}



































// Create a class which has 2 Int properties. One of the properties should be static. Also create 2 methods and make one of them static. Experiment with static method non static property and static property non static method usage. Also experiment with static method and static property.

//
//class RichestMan {
//    static var money = 1000
//    static var name = "Jane"
//    var regularPersonMoney = 0
//    var regularPersonName = "" {
//        didSet {
//            checkRichestMan()
//        }
//    }
//
//    init(regularPersonMoney: Int, regularPersonName: String) {
//        self.regularPersonMoney = regularPersonMoney
//        self.regularPersonName = regularPersonName
//    }
//
//    func checkRichestMan() {
//        if regularPersonMoney > RichestMan.money {
//            RichestMan.money = regularPersonMoney
//            RichestMan.name = regularPersonName
//
//
//        }
//
//    }
//        static func printRichestMan() -> (){
//            print("The richest man \(name) has \(money)$$")
//    }
//
//}
//
//
//var millioner = RichestMan(regularPersonMoney: 3222, regularPersonName: "Anna")
//print(RichestMan.printRichestMan())
