//
//  TableViewCell.swift
//  tableViewProject
//
//  Created by Movses Aghabekyan on 10.11.21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var label: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
