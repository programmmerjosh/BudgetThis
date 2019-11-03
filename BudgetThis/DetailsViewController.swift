//
//  DetailsViewController.swift
//  BudgetThis
//
//  Created by admin on 03/08/2017.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    var strDescription  :String = String()
    var strEnvelopeName :String = String()
    var strAmount       :String = String()
    var strDate         :String = String()
    let aColor = UIColor(named: "customControlColor")
    
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblCategory: UILabel!
    @IBOutlet weak var lblAmount: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblDescriptionTitle: UILabel!
    @IBOutlet weak var lblCategoryTitle: UILabel!
    @IBOutlet weak var lblAmountTitle: UILabel!
    @IBOutlet weak var lblDateTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDescriptionTitle.textColor = aColor
        lblCategoryTitle.textColor    = aColor
        lblAmountTitle.textColor      = aColor
        lblDateTitle.textColor        = aColor
        
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
