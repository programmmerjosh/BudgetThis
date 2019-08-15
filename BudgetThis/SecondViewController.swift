//
//  SecondViewController.swift
//  BudgetThis
//
//  Created by Joshua on 2017/03/08.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit
import CoreData

class SecondViewController: UIViewController, UITextFieldDelegate {

    var tempIncome:Double = 5000
    var limitLength = 12
    
    @IBOutlet var lblTotal: UILabel!
    @IBOutlet var lblAvailableBal: UILabel!
    @IBOutlet var lblAvBalText: UILabel!
    @IBOutlet var lblAvalableText: UILabel!
    @IBOutlet var lblMyIncomeText: UILabel!
    @IBOutlet var txtTotal: UITextField!
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        guard let text = textField.text else { return true }
        let newLength = text.count + string.count - range.length
        return newLength <= limitLength
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // called when 'return' key pressed. return NO to ignore.
        txtTotal.resignFirstResponder()
        return true
    }
    
    @IBAction func TotalEdited(_ sender: UITextField) {
        
        limitLength = 12
        let input:String = txtTotal.text!
        let income:Double = validDouble(double: input)
        if (income == 0) { txtTotal.text = "" }
        tempIncome = income
        incomeChange()
//        addIncomeAmount(incomeAmount: tempIncome)
        updateTotalDisplays()
    }
    
    @IBAction func hideOpenKeyboard(_ sender: UIButton) {
        txtTotal.resignFirstResponder()
    }
    
    public func userInputAmountInTextField(sender:String) -> String  {
        var answer:String = ""
        switch textValueChangeApproved() {
        case true:
            switch sender {
            case nil, "":
                return answer
            default:
                let dbl = validDouble(double: sender)
                lblTotal.text = String(Double(round(100*calcAvailablePercent())/100)) + "%"
                lblAvailableBal.text = String(Double(round(100*calcAvailableAmount())/100))
                answer = String(Double(round(100*dbl)/100))
            }
            return answer
        case false:
            return answer
        }
    }
    
    // display percentage correctly at all times
    public func updateTotalDisplays() {
        lblTotal.text = String(Double(round(100*calcAvailablePercent())/100)) + "%"
        lblAvailableBal.text = String(Double(round(100*calcAvailableAmount())/100))
        lblTotal.adjustsFontSizeToFitWidth = true
        lblAvailableBal.adjustsFontSizeToFitWidth = true
    }

    // deletes all data from original entity
    public func deleteData() {
        
        let retrieve = NSFetchRequest<NSFetchRequestResult>(entityName: "Original")
        do
        {
            let searchResults = try DatabaseController.getContext().fetch(retrieve)
            
            for result in searchResults as! [Original] {
                DatabaseController.getContext().delete(result)
            }
        }
        catch {
            print("Error! \(error)")
        }
        DatabaseController.saveContext()
    }
    
    public func calcAmountFromPercent(percent: Double, income:Double) -> Double {
        let amount:Double = income * (percent / 100)
        return amount
    }


    
    // validate that input amount is a double and does not exceed available amount
    public func textValueChangeApproved() -> Bool {
        
//        let totalAmounts:Double = calcTotalAmount()
//        switch totalAmounts {
//        case _ where totalAmounts > tempIncome:
            return false
//        default:
//            return true
//        }
    }
    
    public func validDouble(double:String) -> Double {
        
        let inputString:String = double
        var newString = ""
        let period:Character = "."
        
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
        return 0
    }
    
    public func calcAvailableAmount() -> Double {
        return 0
    }
    
    // replaces new amounts in database, percentages stay same
    public func incomeChange() {

    }
    
    // displays available % and income
    public func displayIncomeAndAvailable(usedPercent:Double) {
        let avPercent:Double = 100 - usedPercent
        lblTotal.text = String(Double(round(100*avPercent)/100)) + "%"
        txtTotal.text = String(tempIncome)
    }
}
