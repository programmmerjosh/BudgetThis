//
//  TableViewCellViewController.swift
//  FineAnce
//
//  Created by Joshua on 2017/03/08.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit

class TableViewCellViewController: UITableViewCell {
    
    @IBOutlet var first: UILabel!
    @IBOutlet var amounts: UILabel!
    @IBOutlet weak var rightSideAmounts: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
