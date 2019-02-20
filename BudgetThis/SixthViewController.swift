//
//  SixthViewController.swift
//  BudgetThis
//
//  Created by admin on 09/09/2017.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var savedDisplayLabel: UILabel!
    
    var TZStringValues = ["-1200", "-1100", "-1000", "-0930", "-0900", "-0800", "-0700", "-0600", "-0500", "-0400", "-0330", "-0300", "-0230", "-0200", "-0100", "+0000","+0100", "+0200", "+0300", "+0330", "+0400", "+0430", "+0500", "+0545", "+0600", "+0630", "+0700", "+0800", "+0830", "+0845", "+0900", "+0930", "+1000", "+1030", "+1100", "+1200", "+1245", "+1300", "+1345", "+1400"]
    
    var TZValues = [-43200, -39600, -36000, -34200, -32400, -28800, -25200, -21600, -18000, -14400, -12600, -10800, -9000, -7200, -3600, 0,3600, 7200, 10800, 12600, 14400, 16200, 18000, 20700, 21600, 23400, 25200, 28800, 30600, 31500, 32400, 34200, 36000, 37800, 39600, 43200, 45900, 46800, 49500, 50400]
    
    var TZAnswer:Int = 0
    var myTZ:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        savedDisplayLabel.alpha = 0
        myPickerView.delegate = self
        myPickerView.dataSource = self
        
        if let x = UserDefaults.standard.object(forKey: "TZ") as? String
        {
            myTZ = Int(x)!
            ThirdViewController.global.myTZ = Int(x)!
        }
        
        let row:Int = restorePickerSelection()
        myPickerView.selectRow(row, inComponent: 0, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
    
        let temp:Int = TZValues[TZAnswer]
        UserDefaults.standard.set(String(temp), forKey: "TZ")
        ThirdViewController.global.myTZ = temp
        
        showMessageBriefly()
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return TZStringValues[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return TZStringValues.count
    }
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        TZAnswer = row
    }
    
    public func showMessageBriefly()
    {
        savedDisplayLabel.alpha = 1.0
        
        UIView.animate(withDuration: 3.0, animations: {
            self.savedDisplayLabel.alpha = 0
        }, completion:{ _ in
            
        })
    }
    
    public func restorePickerSelection() -> Int {
        
        var i:Int = 0
        let limit:Int = TZStringValues.count
        var answer:Int = 0
        
        while (i < limit)
        {
            if (String(TZValues[i]) == String(myTZ))
            {
                answer = i
                i = limit
            }
            i += 1
        }
        return answer
    }

}
