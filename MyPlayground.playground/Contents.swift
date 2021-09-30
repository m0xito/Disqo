import Cocoa

class Person {
    var name = ""
    var age = 0
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

   
}

class Employee: Person {
    
    var salary = 0
    
    func doWork() {
        print("Hi my name is \(name) and I have \(salary) salary")
    }
}


class Manager: Employee {
    
    var teamSize = 0

    override func doWork() {
        
        super.doWork()
        
        salary += 5000
        print("I am managing people \(name) ")


    }
    
    func hiringPeople() {
        print("I can hire people ")
    }
    
}


let p = Person(name: "jbjb")
let e = Employee()
let m = Manager(n)
print (p.name)
print (e.name)
print (m.name)

p.age = 32
m.age = 343
print(m.age)



