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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        lblDescription.text = IncomeViewController.global.desc
//        lblCategory.text = TransactionViewController.global.cat
//        lblAmount.text = TransactionViewController.global.amount
//        lblDate.text = TransactionViewController.global.date
        
        lblDescription.adjustsFontSizeToFitWidth = true
        lblCategory.adjustsFontSizeToFitWidth = true
        lblAmount.adjustsFontSizeToFitWidth = true
        lblDate.adjustsFontSizeToFitWidth = true
    }
}
