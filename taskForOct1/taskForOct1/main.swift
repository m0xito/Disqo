import Foundation

// Create a struct called Student which has 2 properties student name and grade. Create a class which has an array of Students and has method to add new student to this array, method to remove all students and method to print current list of students.

struct Student {
    var name: String
    var grade: Int
}

class Students {
    var arrOfStudents = [String]()
    
    func addNewStudent(student: String) -> [String] {
        arrOfStudents.append(student)
        return arrOfStudents
    }
    
    func removeStudents() -> [String] {
        arrOfStudents.removeAll()
        return arrOfStudents
    }
    
    func printStudents(students: [String]) -> [String] {
        return arrOfStudents
    }
}
var person = Student(name: "Mrdo", grade: 12)
let someClass = Students()
print(someClass.addNewStudent(student: person.name))



// Create a class which has one Int property and one method which increment that property value. Experiment with self when accessing property.
class SimpleClass {
    var num = 99
   
    
    func incrementor(num: Int) -> Int {
        
        return self.num + num
    }
}

var inc = SimpleClass()
print(inc.incrementor(num: 5))



// Create a struct which has 2 Int properties. Experiment with mutating keyword for struct's method which modifies that properties.
struct Mutant {
    var num1: Int, num2: Int
  
    mutating func increment() {
        num1 += 1
        num2 += 2
    }
    
}


var mutate = Mutant(num1: 4, num2: 5)
mutate.increment()
print(mutate)


// Create a class which has 2 Int properties. One of the properties should be static. Also create 2 methods and make one of them static. Experiment with static method non static property and static property non static method usage. Also experiment with static method and static property.


class RichestMan {
    static var money = 1000
    static var name = "Jane"
    var regularPersonMoney = 0
    var regularPersonName = "" {
        didSet {
            checkRichestMan()
        }
    }
    
    init(regularPersonMoney: Int, regularPersonName: String) {
        self.regularPersonMoney = regularPersonMoney
        self.regularPersonName = regularPersonName
    }
    
    func checkRichestMan() {
        if regularPersonMoney > RichestMan.money {
            RichestMan.money = regularPersonMoney
            RichestMan.name = regularPersonName
            

        }
        
    }
        static func printRichestMan() -> (){
            print("The richest man \(name) has \(money)$$")
    }
    
}


var millioner = RichestMan(regularPersonMoney: 3222, regularPersonName: "Anna")
print(RichestMan.printRichestMan())
