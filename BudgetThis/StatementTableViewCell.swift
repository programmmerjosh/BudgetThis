//
//  StatementTableViewCell.swift
//  BudgetThis
//
//  Created by admin on 08/07/2017.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit

class StatementTableViewCell: UITableViewCell {
    
    let aColor = UIColor(named: "customControlColor")

    @IBOutlet weak var transaction: UILabel!
    @IBOutlet var amounts         : UILabel!
    @IBOutlet weak var dates      : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        transaction.textColor = aColor
        amounts.textColor     = aColor
        
        print(contentView.frame.height)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
