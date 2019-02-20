//
//  SplashScreenViewController.swift
//  BudgetThis
//
//  Created by Joshua on 2017/03/28.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit

class SplashScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        perform(#selector(SplashScreenViewController.showNavigationController), with: nil, afterDelay: 2.3)
    }

    @objc func showNavigationController()
    {
        performSegue(withIdentifier: "mySplashScreen", sender: self)
    }

}
