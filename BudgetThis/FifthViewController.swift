//
//  FifthViewController.swift
//  BudgetThis
//
//  Created by admin on 03/08/2017.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {

    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblCategory: UILabel!
    @IBOutlet weak var lblAmount: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblDescription.text = FourthViewController.global.desc
        lblCategory.text = FourthViewController.global.cat
        lblAmount.text = FourthViewController.global.amount
        lblDate.text = FourthViewController.global.date
        
        lblDescription.adjustsFontSizeToFitWidth = true
        lblCategory.adjustsFontSizeToFitWidth = true
        lblAmount.adjustsFontSizeToFitWidth = true
        lblDate.adjustsFontSizeToFitWidth = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
