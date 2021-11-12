//
//  SecondViewController.swift
//  tableViewProject
//
//  Created by Movses Aghabekyan on 10.11.21.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var personName: UILabel!
    @IBOutlet weak var personPhoto: UIImageView!
    @IBOutlet weak var personDescription: UILabel!
    var personNameText = String()
    var personPhotoImage = UIImage()
    var personDescriptionText = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        personName.text = personNameText
        personPhoto.image = personPhotoImage
        personDescription.text = personDescriptionText
    }
}


