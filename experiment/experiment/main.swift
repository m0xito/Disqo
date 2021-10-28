//
//  main.swift
//  OS
//
//  Created by Movses Aghabekyan on 26.10.21.
//

import Foundation

class NumbersGenerator {
    func printData() {
        let globalQueue1 = DispatchQueue.global().async {
            print(0...9)
        }
        let globalQueue2 = DispatchQueue.global().async {
            print(10...99)
        }
        let globalQueue3 = DispatchQueue.global().async {
            print(100...999)
        }
    }
}

var numberGenerator = NumbersGenerator()
numberGenerator.printData()



