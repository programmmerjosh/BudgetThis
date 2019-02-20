//
//  PurchaseViewController.swift
//  BudgetThis
//
//  Created by Joshua on 2017/03/29.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

// ONLY FOR FREE VERSION...

import UIKit

class PurchaseViewController: UIViewController {

    @IBAction func goToAppStoreAction(_ sender: UIButton) {
        createAlert(title: "Notification", message: "Unfortunately the full version is still undergoing development and is not ready for download. Thank you for your patience.")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func createAlert(title: String, message: String)
    {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { action in
        alert.dismiss(animated: true, completion: nil)}))
        
        self.present(alert, animated: true, completion: nil)
    }

}
