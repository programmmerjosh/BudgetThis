//
//  DetailsViewController.swift
//  BudgetThis
//
//  Created by admin on 03/08/2017.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblCategory: UILabel!
    @IBOutlet weak var lblAmount: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    
    var strDescription  :String = String()
    var strEnvelopeName :String = String()
    var strAmount       :String = String()
    var strDate         :String = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDescription.text  = strDescription
        lblCategory.text     = strEnvelopeName
        lblAmount.text       = strAmount
        lblDate.text         = strDate
        
        lblDescription.adjustsFontSizeToFitWidth = true
        lblCategory.adjustsFontSizeToFitWidth    = true
        lblAmount.adjustsFontSizeToFitWidth      = true
        lblDate.adjustsFontSizeToFitWidth        = true
    }
}
