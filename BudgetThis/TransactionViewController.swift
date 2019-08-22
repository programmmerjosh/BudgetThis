//
//  TransactionViewController.swift
//  BudgetThis
//
//  Created by Joshua Van Niekerk on 2017/05/04.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit
import CoreData

class TransactionViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var limitLength :Int                       = 0
    var picker                                 = UIPickerView()
    let vcIncome    :IncomeViewController      = IncomeViewController()
    let vcMainDisp  :MainDisplayViewController = MainDisplayViewController()
    
    @IBOutlet weak var txtAmount            : UITextField!
    @IBOutlet var txtEnvelope               : UITextField!
    @IBOutlet var txtDescription            : UITextField!
    @IBOutlet weak var amountAddedMessage   : UILabel!
    @IBOutlet weak var invalidAmountMessage : UILabel!
    
    @IBAction func AmountEdit(_ sender: UITextField) {
        limitLength = 12
        let temp:Double = vcIncome.validDouble(double: txtAmount.text!)
        if (temp == 0) { txtAmount.text = "" }
    }
    @IBAction func pickerSelected(_ sender: UITextField) {
        self.txtEnvelope.inputView = self.picker
    }
    @IBAction func DescriptionSelected(_ sender: UITextField) {
        limitLength = 20
    }
    
    @IBAction func HideKeyboardAction(_ sender: UIButton) {
        txtAmount.resignFirstResponder()
        txtEnvelope.resignFirstResponder()
        txtDescription.resignFirstResponder()
    }
    @IBAction func submitAction(_ sender: UIButton) {
        AddTransaction()
        txtAmount.text      = ""
        txtDescription.text = ""
        txtAmount.resignFirstResponder()
        txtEnvelope.resignFirstResponder()
        txtDescription.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amountAddedMessage.alpha   = 0
        invalidAmountMessage.alpha = 0
        
        picker.delegate         = self
        picker.dataSource       = self
        txtAmount.delegate      = self
        txtDescription.delegate = self
        txtEnvelope.text        = vcMainDisp.arrEnvelope[0].name
        createPicker()
        
        if vcIncome.fetchValue(key: "TZ") == String() {
            createAlert(title: "TimeZone Settings", message: "To accurately represent your transaction history dates and times, please take a few seconds to set your current location's TimeZone. \n Click 'Okay' below and then click on the button located in the top right corner of this view.")
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        guard let text = textField.text else { return true }
        let newLength = text.count + string.count - range.length
        return newLength <= limitLength
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // called when 'return' key pressed. return NO to ignore.
        txtDescription.resignFirstResponder()
        return true
    }
    
    // UIPickerView Functions
    @available(iOS 2.0, *)
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    @available(iOS 2.0, *)
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return vcMainDisp.arrEnvelope.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txtEnvelope.text = vcMainDisp.arrEnvelope[row].name!
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return vcMainDisp.arrEnvelope[row].name!
    }
    
    public func createPicker() {
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(endProcess))
        toolbar.setItems([doneButton], animated: false)
        
        txtEnvelope.inputAccessoryView = toolbar
        txtEnvelope.inputView          = picker
    }
    
    @objc public func endProcess() {
        self.view.endEditing(true)
    }
    
    public func AddTransaction() {

        let envelopeName:String = txtEnvelope.text!
        let amount          = vcIncome.validDouble(double: String(txtAmount.text!))
        
        if (amount > 0) {
            do {
                let addition:Transaction = NSEntityDescription.insertNewObject(forEntityName: "Transaction", into: DatabaseController.getContext()) as! Transaction
                
                addition.envelopeName = envelopeName
                addition.amount       = Double(round(100*amount)/100)
                addition.timeAndDate  = saveDate()
                addition.month        = Int16(vcMainDisp.saveMonth())
                
                let temp = ""
                switch txtDescription.text {
                case temp, nil:
                    addition.info = "/"
                default:
                    addition.info = txtDescription.text!
                }
                DatabaseController.saveContext()
                showSuccessMessageBriefly()
            }
        }
        else {
            showErrorMessageBriefly()
        }
    }

    public func saveDate() -> String {
        
        let dateFormatter = DateFormatter()
        let TZ:Int        = vcIncome.fetchValue(key: "TZ") == String() ? 0 : Int(vcIncome.fetchValue(key: "TZ"))!
        
        // temporary seconds-from-GMT because will be different for different timezones
        dateFormatter.timeZone   = TimeZone.init(secondsFromGMT: TZ)
        dateFormatter.dateFormat = "MM/dd/yy HH:mm"
        
        let now           = NSDate()
        let answer:String = dateFormatter.string(from: now as Date)
        
        return answer
    }
    
    public func showSuccessMessageBriefly() {
        amountAddedMessage.alpha = 1.0
        
        UIView.animate(withDuration: 3.0, animations: {
            self.amountAddedMessage.alpha = 0
        }, completion:{ _ in })
    }
    
    public func showErrorMessageBriefly() {
        invalidAmountMessage.alpha = 1.0
        
        UIView.animate(withDuration: 3.0, animations: {
            self.invalidAmountMessage.alpha = 0
        }, completion:{ _ in })
    }
    
    public func createAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
    }))
        self.present(alert, animated: true, completion: nil)
    }
}
