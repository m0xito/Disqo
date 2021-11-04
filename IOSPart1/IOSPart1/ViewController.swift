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
        label.text = ""
        label.textColor = .blue
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 32.0)
        
        
        // Generate Button
        
        view.addSubview(generateButton)
        generateButton.translatesAutoresizingMaskIntoConstraints = false
        generateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        generateButton.setTitle("GENERATE", for: .normal)
        generateButton.setTitleColor(.red, for: .normal)
        generateButton.titleLabel?.font =  UIFont(name: "", size: 40)
        generateButton.addTarget(self, action: #selector(letAction), for: .touchUpInside)
        
       
        
        // Switch controller
        
        view.addSubview(switchControllButton)
        switchControllButton.translatesAutoresizingMaskIntoConstraints = false
        switchControllButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        switchControllButton.isOn = false

        // Constraints
        
        NSLayoutConstraint.activate([
            generateButton.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -20),
            switchControllButton.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -100)
            
        ])
    }
    
    @objc func letAction() {
        if switchControllButton.isOn {
            label.text = String(Int.random(in: 11...100))
        } else {
            label.text = String(Int.random(in: 0...10))
        }
    }
}
