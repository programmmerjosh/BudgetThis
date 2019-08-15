//
//  MainDisplayTableViewCell.swift
//  BudgetThis
//
//  Created by Joshua on 2017/03/08.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit

class MainDisplayTableViewCell: UITableViewCell {
    
    @IBOutlet var name: UILabel!
    @IBOutlet var assigned: UILabel!
    @IBOutlet weak var remaining: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
