//
//  StatementTableViewCell.swift
//  BudgetThis
//
//  Created by admin on 08/07/2017.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit

class StatementTableViewCell: UITableViewCell {

    @IBOutlet weak var transaction: UILabel!
    @IBOutlet var amounts: UILabel!
    @IBOutlet weak var dates: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
