//
//  ViewController.swift
//  NetworkProject
//
//  Created by Movses Aghabekyan on 21.11.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var multilineText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let urlString = "https://developer.o2.cz/mobility/sandbox/api/info"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error)
                return
            }
            guard let data = data else { return }
            
            do {
                let app = try JSONDecoder().decode(Application.self, from: data)
                DispatchQueue.main.async {
                    self.multilineText.text = "\(app)"
                }
            } catch {
                print(error)
            }
            
        }.resume()
    }
                                            
    @IBAction func request(_ sender: Any) {
        multilineText.isHidden = false
        }
    
}

