//
//  main.swift
//  taskForOct7
//
//  Created by Movses Aghabekyan on 04.10.21.
//

import Foundation

// Experiment with deinit. Create class named Table. Inside init method of the class print text "creating table", and inside deinit print text "destroying table". Create method for table class named description and print some text inside it. Create a method which takes object of Table as an argument and calls description method inside it. Create an object of Table class, then call method which you created and pass object of table class there. See how things are working. Explain in a comment the behavior you saw.


class Table {
    
    init() {
        print("creating table")
    }
    
    deinit {
        print("destroying table")
    }
    
    func description() {
        print("Description text")
    }
    
    func callDescript(_ table: Table) {
        table.description()
    }
    
    
}

let table = Table()
table.callDescript(table)

// I noticed that our deinitializator was not printed. But it cleaned our initializator of Table class



//func showDeinitialization() {
//    let table = Table()
//    table.callDescript(table)
//}

//showDeinitialization()































//print("TESTTTTT")
//
//
//class User {
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//class onlineUser: User {
//    var age: Int
//    init(name: String, age: Int) {
//        self.age = age
//        super.init(name: name)
//        print("Online player")
//    }
//    deinit {
//        print("No Online users")
//    }
//
//}
//
//func makeOffline(user: onlineUser?) {
//    var user2 = user
//    user2 = nil
//}
//
////var onlineUser = onlineUser(name: "Davit", age: 55)
//var user = User(name: "ffff")
//var useronline: onlineUser? = onlineUser(name: user.name, age: 55)
//useronline = nil
//makeOffline(user: useronline)
//print(user.name)

