//
//  ViewController.swift
//  IOSPart1
//
//  Created by Movses Aghabekyan on 02.11.21.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var number: UILabel!
    var n = 0
    
    @IBAction func pressToSwitch(_ sender: UIButton) {
        if sender.currentTitle == "Switch On" {
            sender.setTitle("Switch Off", for: .normal)
            n = 1
            sender.setTitleColor(.red, for: .normal)
            
        } else {
            n = 0
            sender.setTitle("Switch On", for: .normal)
            sender.setTitleColor(.green, for: .normal)
        }
    }
    
    @IBAction func genetator(_ sender: UIButton) {
        let a = Int.random(in: 0...10)
        let b = Int.random(in: 11...100)
        
        if n == 0 {
            number.text = String(a)
        } else {
            number.text = String(b)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(number)
        
    }


}

