//
//  IncomeViewController.swift
//  BudgetThis
//
//  Created by Joshua on 2017/03/08.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit
import CoreData

class IncomeViewController: UIViewController, UITextFieldDelegate {
    
    var limitLength:Int = 12
    let aColor          = UIColor(named: "customControlColor")
    
    @IBOutlet var lblAvailablePercent : UILabel!
    @IBOutlet var lblAvailableAmount  : UILabel!
    @IBOutlet var txtIncome           : UITextField!
    @IBOutlet weak var lblPercentTitle: UILabel!
    @IBOutlet weak var lblBalanceTitle: UILabel!
    @IBOutlet weak var lblIncomeTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblAvailablePercent.textColor = aColor
        lblAvailableAmount.textColor  = aColor
        lblPercentTitle.textColor     = aColor
        lblBalanceTitle.textColor     = aColor
        lblIncomeTitle.textColor      = aColor
        
        let userIncome:String = fetchValue(key: "userIncome") == String() ? "1000" : fetchValue(key: "userIncome")
        txtIncome.text        = userIncome
        update()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        update()
    }
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textField.text else { return true }
        let newLength = text.count + string.count - range.length
        return newLength <= limitLength
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // called when 'return' key pressed. return NO to ignore.
        txtIncome.resignFirstResponder()
        return true
    }
    
    @IBAction func IncomeEdited(_ sender: UITextField) {
        let income:Double = validDouble(double: txtIncome.text!)
        if (income == 0) { txtIncome.text = "" }
        incomeChange(amount: income)
        update()
    }
    
    @IBAction func hideOpenKeyboard(_ sender: UIButton) {
        txtIncome.resignFirstResponder()
    }
    
    public func update() {
        lblAvailablePercent.text = String(calcAvailablePercent()) + "%"
        lblAvailableAmount.text  = String(calcAvailableAmount())
        lblAvailablePercent.adjustsFontSizeToFitWidth = true
        lblAvailableAmount.adjustsFontSizeToFitWidth = true
    }
    
    public func validDouble(double:String) -> Double {
        
        let inputString :String    = double
        var newString   :String    = ""
        let period      :Character = "."
        
        for Character in inputString {
            if (Character != "," && Character != ".") {newString = newString + String(Character)}
            else{newString = newString + String(period)}
        }
        
        switch Double(newString) {
        case nil:
            return 0
        default:
            return Double(newString)!
        }
    }
    
    public func calcAvailablePercent() -> Double {
        let income    :Double = validDouble(double: txtIncome.text!)
        let available :Double = calcAvailableAmount()
        var percent   :Double = 100
        if (available != 0 && income != 0) {
            percent = (available / income) * 100
        }
        return round(100*percent)/100
    }
    
    public func calcAvailableAmount() -> Double {
        var amount:Double = 0
        let income:Double = validDouble(double: txtIncome.text!)
        let fetchData = NSFetchRequest<NSFetchRequestResult>(entityName: "Envelope")
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(fetchData)
            
            for result in searchResults as! [Envelope] {
                amount += result.assigned
            }
        }
        catch {
            print("Error! \(error)")
        }
        return round(100*(income - amount))/100
    }
    
    public func incomeChange(amount: Double) {
        if amount > 0 {
            saveValue(value: String(amount), key: "userIncome")
        }
    }
    
    public func saveValue(value: String, key: String) {
        UserDefaults.standard.set(value, forKey: key)
    }
    
    public func fetchValue(key: String) -> String {
        if let value = UserDefaults.standard.object(forKey: key) as? String {
            return value
        } else {
            return String()
        }
    }
}
