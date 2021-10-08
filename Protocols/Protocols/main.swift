//
//  main.swift
//  Protocols
//
//  Created by Movses Aghabekyan on 07.10.21.
//

import Foundation


// Create a protocol named PersonInterface. Add 2 properties for first and last names. Add method named sayYourName which is not getting or returning any parameter. Write a class Person which will conform to PersonInterface protocol. Implement all properties and method defined in the protocol. Create instance of Person type, init first and last names. As an implementation for sayYourName just print first and last names. Call that method after you will create an object of type Person.


protocol PersonInterface {
    var firstName: String { get  }
    var lastName: String { get  }
    
    func sayYourName()
    
}


class Person: PersonInterface {
    var firstName: String
    
    var lastName: String
    
    func sayYourName() {
        print("\(firstName) \(lastName)")
    }
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
}


var person = Person(firstName: "Neil", lastName: "Armstrong")
person.sayYourName()



// Modify previous example and add an init method inside PersonInterface protocol. That init should get 2 string parameters for first and last names.


extension PersonInterface {
    init(firstName: String, lastName: String) {
        self.init(firstName: firstName, lastName: lastName)
    }
    
}


// Create FootballPlayer protocol and inherit it from PersonInterface protocol. Add clubName function to that protocol which is not getting or returning any parameter. Modify previous example so Person class will conform to FootballPlayer protocol. As an implementation for clubName just randomly print some football club name. Create instance of the Person class and call all methods defined in the protocol.


protocol FootballPlayer: PersonInterface {
    func clubName()
}

extension Person: FootballPlayer {
    func clubName() {
        print("Barcelona")
    }
    
   
    
}


var person2 = Person(firstName: "Barak", lastName: "Obama")
person2.clubName()



// Experiment with class-only protocols. Try struct to conform to class-only protocol and see what's happening.


protocol OnlyForClass: AnyObject {
    var name: String { get }
}

class Human: OnlyForClass {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}


//We cannot assign OnlyForClass protocol to structs or enums cause they are value types.


// Implement ClassRoom class which has addStudent method and Int property for current student count. Define protocol named ClassRoomDelegate and declare one method named studentAdded which has only 1 Int parameter named currentStudentCount. Define School class which conforms to ClassRoomDelegate protocol via extension. Inside School class add property named classroom which is of type ClassRoom. Add weak property for ClassRoom named delegate. For ClassRoom class addStudent method add the following implementation. When addStudent method called currentStudentCount should be incremented and you should call studentAdded method via delegate to distribute the current number of students. School implementation for studentAdded should print the number of students in the classroom. Create object of type School and then call addStudent method several times to see how you correctly print the number of students in the classroom.


class ClassRoom {
    func addStudent()  {
        
    }
    var currentStudentsCount: Int
    
    init(currentStudentsCount: Int) {
        self.currentStudentsCount = currentStudentsCount
    }
}


protocol ClassRoomDelegate {
    func studentAdded(currentStudentCount: Int)
    
}


