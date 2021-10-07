//
//  main.swift
//  taskForOct8
//
//  Created by Movses Aghabekyan on 05.10.21.
//

import Foundation

// Create 2-3 classes. Create another class which has a method which can return instance of mentioned classes optionally. Also create instances of classes as a property for another class. Experiment a lot with different cases to understand optional chaining.


class Game {
    var map: Map?
    
    func strongestBot() -> Player? {
        return map?.bots.max(by: { $0.strength > $1.strength })

//        instead of
//        if let map = map {
//            if !map.bots.isEmpty {
//                return map.bots.max(by: { $0.strength > $1.strength })
//            }
//        }
//
//        return nil
    }
    
    func emailOfStrongestPerson() -> String? {
        return strongestBot()?.email
    }
}

class Map {
    var grid = [[Int]]()
    var bots = [Player]()
}

class Player {
    var name: String = ""
    var score: Int = 0
    var strength = 34
    var email: String?
}
