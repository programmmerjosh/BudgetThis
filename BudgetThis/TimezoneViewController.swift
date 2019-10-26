//
//  TimezoneViewController.swift
//  BudgetThis
//
//  Created by admin on 09/09/2017.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit

class TimezoneViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var arrayIndex:Int                = 0
    let vcIncome:IncomeViewController = IncomeViewController()
    
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var savedDisplayLabel: UILabel!
    
    var tzStringArray = ["-1200", "-1100", "-1000", "-0930", "-0900", "-0800", "-0700", "-0600", "-0500", "-0400", "-0330", "-0300", "-0230", "-0200", "-0100", "+0000","+0100", "+0200", "+0300", "+0330", "+0400", "+0430", "+0500", "+0545", "+0600", "+0630", "+0700", "+0800", "+0830", "+0845", "+0900", "+0930", "+1000", "+1030", "+1100", "+1200", "+1245", "+1300", "+1345", "+1400"]
    
    var tzIntArray = [-43200, -39600, -36000, -34200, -32400, -28800, -25200, -21600, -18000, -14400, -12600, -10800, -9000, -7200, -3600, 0,3600, 7200, 10800, 12600, 14400, 16200, 18000, 20700, 21600, 23400, 25200, 28800, 30600, 31500, 32400, 34200, 36000, 37800, 39600, 43200, 45900, 46800, 49500, 50400]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        savedDisplayLabel.alpha = 0
        myPickerView.delegate   = self
        myPickerView.dataSource = self
        
        let row:Int = restorePickerSelection()
        myPickerView.selectRow(row, inComponent: 0, animated: true)
    }
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
        let value:Int = tzIntArray[arrayIndex]
        vcIncome.saveValue(value: String(value), key: "TZ")
        showMessageBriefly()
        performSegue(withIdentifier: "tab", sender: self)
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tzStringArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tzStringArray.count
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        arrayIndex = row
    }
    
    public func showMessageBriefly() {
        savedDisplayLabel.alpha = 1.0
        
        UIView.animate(withDuration: 3.0, animations: {
            self.savedDisplayLabel.alpha = 0
        }, completion:{ _ in })
    }
    
    public func restorePickerSelection() -> Int {
        
        var i       :Int = 0
        let timezone:Int = vcIncome.fetchValue(key: "TZ") == String() ? 0 : Int(vcIncome.fetchValue(key: "TZ"))!
        var answer  :Int = 0
        
        for value in tzIntArray {
            if String(value) == String(timezone) {
                answer = i
            }
            i += 1
        }
        return answer
    }
}
