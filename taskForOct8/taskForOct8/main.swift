//
//  main.swift
//  taskForOct8
//
//  Created by Movses Aghabekyan on 05.10.21.
//

import Foundation

// Create 2-3 classes. Create another class which has a method which can return instance of mentioned classes optionally. Also create instances of classes as a property for another class. Experiment a lot with different cases to understand optional chaining.


class Game {
    
    var onlineGamersCount: OnlineGamersCount?

}


class OnlineGamersCount {

    var count = 3

}


class ReturnClass {
    
    var instance = OnlineGamersCount()
    
    
    func returnClasses() -> Int? {
        return instance.count
    }
}


class AnotherClass {
    
    var instance = Game()
    
}
