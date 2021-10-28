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
            for i in 0...9 {
                print(i)
            }
        }
        let globalQueue2 = DispatchQueue.global().async {
            for i in 10...99 {
                print(i)
            }
        }
        let globalQueue3 = DispatchQueue.global().async {
            for i in 100...999 {
                print(i)
            }
        }
    }
}

let numberGenerator = NumbersGenerator()

numberGenerator.printData()
numberGenerator.printData()
numberGenerator.printData()
numberGenerator.printData()
numberGenerator.printData()
let input = readLine()


