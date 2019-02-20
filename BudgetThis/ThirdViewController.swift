//
//  ThirdViewController.swift
//  BudgetThis
//
//  Created by Joshua Van Niekerk on 2017/05/04.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit
import CoreData

class ThirdViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var limitLength = 12
    var picker = UIPickerView()
    let secVC:SecondViewController = SecondViewController()
    
    @IBOutlet weak var txtAmountOutlet: UITextField!
    @IBOutlet var txtCategoryOutlet: UITextField!
    @IBOutlet var txtDescriptionOutlet: UITextField!
    @IBOutlet weak var amountAddedMessage: UILabel!
    @IBOutlet weak var invalidAmountMessage: UILabel!
    
    @IBAction func txtAmountAction(_ sender: UITextField) {
        limitLength = 12
        
        // VALIDATION
        var temp:Double = 0
        
        if (txtAmountOutlet.text != "")
        {
            temp = secVC.validDouble(double: txtAmountOutlet.text!)
        }
        if (temp == 0)
        {
            txtAmountOutlet.text = ""
        }
    }
    @IBAction func txtCategoryAction(_ sender: UITextField) {
        self.txtCategoryOutlet.inputView = self.picker
    }
    @IBAction func txtDescriptionAction(_ sender: UITextField) {
        limitLength = 20
    }
    
    @IBAction func HideKeyboardAction(_ sender: UIButton) {
        txtAmountOutlet.resignFirstResponder()
        txtCategoryOutlet.resignFirstResponder()
        txtDescriptionOutlet.resignFirstResponder()
    }
    @IBAction func submitAction(_ sender: UIButton) {
        
        AddTransactionToDatabase()
        
        var tempName:String = String()
        var month:String = String()
        
        
        if (txtCategoryOutlet.text != "")
        {
            tempName = txtCategoryOutlet.text!
            
            month = String(saveMonth())
        }
        
        AddFieldTotalEditAndAddNewValueToDatabase(name: tempName, month: month)
        refreshRemBal()
        
        txtAmountOutlet.text = ""
        txtDescriptionOutlet.text = ""
        txtAmountOutlet.resignFirstResponder()
        txtCategoryOutlet.resignFirstResponder()
        txtDescriptionOutlet.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        amountAddedMessage.alpha = 0
        invalidAmountMessage.alpha = 0
        picker.delegate = self
        picker.dataSource = self
        txtAmountOutlet.delegate = self
        txtDescriptionOutlet.delegate = self
        createPicker()
        txtCategoryOutlet.text = FirstViewController.stR.fields[0]
        
        if let x = UserDefaults.standard.object(forKey: "TZ") as? String
        {
            global.myTZ = Int(x)!
        }
        else
        {
            createAlert(title: "TimeZone Settings", message: "To accurately represent your transaction history dates and times, please take a few seconds to set your current location's TimeZone. \n Click 'Okay' below and then click on the button located in the top right corner of this view.")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        FirstViewController.AppUtility.lockOrientation(.portrait)
        // Or to rotate and lock
        // AppUtility.lockOrientation(.portrait, andRotateTo: .portrait)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Don't forget to reset when view is being removed
        FirstViewController.AppUtility.lockOrientation(.all)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        guard let text = textField.text else { return true }
        let newLength = text.count + string.count - range.length
        return newLength <= limitLength
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // called when 'return' key pressed. return NO to ignore.
        txtDescriptionOutlet.resignFirstResponder()
        return true
    }
    
    // UIPickerView Functions
    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    @available(iOS 2.0, *)
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return FirstViewController.stR.fields.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txtCategoryOutlet.text = FirstViewController.stR.fields[row]
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return FirstViewController.stR.fields[row]
    }
    
    public func createPicker()
    {
        // Toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(endProcess))
        
        toolbar.setItems([doneButton], animated: false)
        
        txtCategoryOutlet.inputAccessoryView = toolbar
        
        // Assign datePicker to TextField
        txtCategoryOutlet.inputView = picker
    }
    
    @objc public func endProcess()
    {
        self.view.endEditing(true)
    }
    
    func MonthsAgo(startDate: Date, endDate: Date) -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([Calendar.Component.month], from: startDate, to: endDate)
        
        return components.month!
    }
    
    public func AddTransactionToDatabase() {
        
        // empty text fields validation
        if (txtCategoryOutlet.text != "" && txtAmountOutlet.text != "")
        {
            let category:String = txtCategoryOutlet.text!
            let temp:String = txtAmountOutlet.text!
            let amount = secVC.validDouble(double: temp)
            
            if (amount >= 0.01)
            {
                
                let ft:FieldTransaction = NSEntityDescription.insertNewObject(forEntityName: "FieldTransaction", into: DatabaseController.getContext()) as! FieldTransaction
                
                ft.fieldName = category
                ft.amountUsed = Double(round(100*amount)/100)
                ft.timeAndDate = saveDate()
                ft.monthCat = Int16(saveMonth())
                
                if (txtDescriptionOutlet.text != "")
                {
                    ft.transactionDesc = txtDescriptionOutlet.text!
                }
                else
                {
                    ft.transactionDesc = "/"
                }
                
                DatabaseController.saveContext()
                showSuccessMessageBriefly()
            }
            else
            {
                showErrorMessageBriefly()
            }
        }
        else
        {
            print("error")
        }
    }
    
//    public func returnMonthCategory(selectedDate: String) -> Int {
//        
//        let dateFormatter = DateFormatter()
//        
//        // temporary seconds-from-GMT because will be different for different timezones
//        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: global.myTZ)
//        dateFormatter.dateFormat = "MM/dd/yy hh:mm"
//        
//        let now = NSDate()
//        var then = Date()
//        
//        then = dateFormatter.date(from: selectedDate)!
//        
//        return MonthsAgo(startDate: then, endDate: now as Date)
//    }
    
    public func saveDate() -> String {
        
        let dateFormatter = DateFormatter()
        
        // temporary seconds-from-GMT because will be different for different timezones
        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: global.myTZ)
        dateFormatter.dateFormat = "MM/dd/yy HH:mm"
        
        let now = NSDate()
        let answer:String = dateFormatter.string(from: now as Date)
        
        return answer
    }
    
    public func saveMonth() -> Int {
        
        let dateFormatter = DateFormatter()

        // temporary seconds-from-GMT because will be different for different timezones
        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: global.myTZ)
        dateFormatter.dateFormat = "MM"

        let now = NSDate()
        let answer:String = dateFormatter.string(from: now as Date)
        let number:Int = Int(answer)!
        
        return number
    }
    
    public func AddFieldTotalEditAndAddNewValueToDatabase(name: String, month: String)
    {
        if ((name != "") && month == String(saveMonth()))
        {
            let predicate1 = NSPredicate(format: "fieldName = %@", name)
            let predicate2 = NSPredicate(format: "monthCat = %@", month)
            let predicateCompound = NSCompoundPredicate.init(type: .and, subpredicates: [predicate1,predicate2])
            let fetchData = NSFetchRequest<NSFetchRequestResult>(entityName: "FieldTransaction")
            fetchData.predicate = predicateCompound
            
            var tempTotalAmount:Double = 0.0
            
            do {
                let searchResults = try DatabaseController.getContext().fetch(fetchData)
                
                for result in searchResults as! [FieldTransaction] {
                    tempTotalAmount = tempTotalAmount + result.amountUsed
                    
                    var j:Int = 0
                    let limit = FirstViewController.stR.fields.count
                    
                    while (j < limit)
                    {
                        if (FirstViewController.stR.fields[j] == name)
                        {
                            FirstViewController.stR.totals[j] = String(Double(round(100*Double(tempTotalAmount))/100))
                            j = limit
                        }
                        j += 1
                    }
                }
            }
            catch {
                print("Error! \(error)")
            }
            
            let NewPredicate = NSPredicate(format: "fieldName = %@", name)
            let fetchNextData = NSFetchRequest<NSFetchRequestResult>(entityName: "FieldTotals")
            fetchNextData.predicate = NewPredicate
            
            do {
                let searchResults = try DatabaseController.getContext().fetch(fetchNextData)
                
                for result in searchResults as! [FieldTotals] {
                    DatabaseController.getContext().delete(result)
                }
            }
            catch {
                print("Error! \(error)")
            }
            
            // add new value
            let ft:FieldTotals = NSEntityDescription.insertNewObject(forEntityName: "FieldTotals", into: DatabaseController.getContext()) as! FieldTotals
            
            ft.fieldName = name
            ft.totalAmount = tempTotalAmount
            
            DatabaseController.saveContext()
        }
    }
    
    public func showSuccessMessageBriefly()
    {
        amountAddedMessage.alpha = 1.0
        
        UIView.animate(withDuration: 3.0, animations: {
            self.amountAddedMessage.alpha = 0
        }, completion:{ _ in
            
        })
    }
    
    public func showErrorMessageBriefly()
    {
        invalidAmountMessage.alpha = 1.0
        
        UIView.animate(withDuration: 3.0, animations: {
            self.invalidAmountMessage.alpha = 0
        }, completion:{ _ in
            
        })
    }
    
    public func refreshRemBal() {
        
        var i:Int = 0
        var keepGoing:Bool = true
        
        while (keepGoing)
        {
            keepGoing = false
            let predicate = NSPredicate(format: "autoNumber = %@", String(i))
            let fetchData = NSFetchRequest<NSFetchRequestResult>(entityName: "Original")
            fetchData.predicate = predicate
            
            do {
                let searchResults = try DatabaseController.getContext().fetch(fetchData)
                
                for result in searchResults as! [Original] {
                    let temp:Double = Double(result.amount) - Double(FirstViewController.stR.totals[i])!
                    FirstViewController.stR.amounts[i] = String(Double(round(100*Double(temp))/100))
                    keepGoing = true
                }
            }
            catch {
                print("Error! \(error)")
            }
            i += 1
        }
    }
    
    struct global {
        static var myTZ:Int = 0
    }
    
    public func createAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
    }))
        self.present(alert, animated: true, completion: nil)
    }
}
