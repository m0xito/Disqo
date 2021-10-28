//
//  main.swift
//  OS
//
//  Created by Movses Aghabekyan on 26.10.21.
//

import Foundation

class NumbersGenerator {
    func printData() {
        let _ = DispatchQueue.global().async {
            for i in 0...9 {
                print(i)
            }
        }
        let _ = DispatchQueue.global().async {
            for i in 10...99 {
                print(i)
            }
        }
        let _ = DispatchQueue.global().async {
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

