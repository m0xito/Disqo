//
//  ViewController.swift
//  IOSPart1
//
//  Created by Movses Aghabekyan on 02.11.21.
//

import UIKit

class ViewController: UIViewController {

    let label = UILabel()
    let generateButton = UIButton()
    let switchControllButton = UISwitch()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        // Label
        
        view.addSubview(label)
        label.text = "0"
        label.textColor = .blue
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 32.0)
        
        
        // Generate Button
        
        view.addSubview(generateButton)
        generateButton.setTitle("GENETATE", for: .normal)
        generateButton.setTitleColor(.red, for: .normal)
        generateButton.titleLabel?.font =  UIFont(name: "", size: 40)
        generateButton.frame = CGRect(x: Int(self.view.bounds.width / 2.0 - 50), y: Int(self.view.bounds.height - 120), width: 100, height: 100)
        generateButton.addTarget(self, action: #selector(letAction), for: .touchUpInside)
        
       
        
        // Switch controller
        
        view.addSubview(switchControllButton)
        switchControllButton.frame = CGRect(x: Int(self.view.bounds.width / 2.0 - 25), y: Int(self.view.bounds.height - 250), width: 100, height: 100)
    }
    
    @objc func letAction() {
        if switchControllButton.isOn {
            label.text = String(Int.random(in: 0...10))
        } else {
            label.text = String(Int.random(in: 11...100))
        }
    }
}
