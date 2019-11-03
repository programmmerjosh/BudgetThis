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
    
    var limitLength :Int                       = 12
    var picker                                 = UIPickerView()
    let vcIncome    :IncomeViewController      = IncomeViewController()
    let vcMainDisp  :MainDisplayViewController = MainDisplayViewController()
    var arrEnvelope :[Envelope]                = []
    
    let aColor              = UIColor(named: "customControlColor")
    let txtBackgroundColor  = UIColor(named: "textboxBackgroundColor")
    let txtTextColor        = UIColor(named: "textboxTextColor")
    
    @IBOutlet weak var submitButton: UIButton!
    
    @IBOutlet weak var txtAmount            : UITextField!
    @IBOutlet var txtEnvelope               : UITextField!
    @IBOutlet var txtDescription            : UITextField!
    @IBOutlet weak var amountAddedMessage   : UILabel!
    @IBOutlet weak var invalidAmountMessage : UILabel!
    @IBOutlet weak var lblAmount: UILabel!
    @IBOutlet weak var lblEnvelope: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    
    @IBAction func AmountEdit(_ sender: UITextField) {
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
        
        txtAmount.textColor      = txtTextColor
        txtEnvelope.textColor    = txtTextColor
        txtDescription.textColor = txtTextColor
        
        txtAmount.backgroundColor       = txtBackgroundColor
        txtEnvelope.backgroundColor     = txtBackgroundColor
        txtDescription.backgroundColor  = txtBackgroundColor
        
        lblAmount.textColor             = aColor
        lblEnvelope.textColor           = aColor
        lblDescription.textColor        = aColor
        amountAddedMessage.textColor    = aColor
        invalidAmountMessage.textColor  = aColor
        
        amountAddedMessage.alpha   = 0
        invalidAmountMessage.alpha = 0
        fetchEnv()
        picker.delegate         = self
        picker.dataSource       = self
        txtAmount.delegate      = self
        txtDescription.delegate = self
        createPicker()
        
        if vcIncome.fetchValue(key: "TZ") == String() {
            createAlert(title: "TimeZone Settings", message: "To accurately represent your transaction history dates and times, please take a few seconds to set your current location's TimeZone. \n Click 'Okay' below and then click on the button located in the top right corner of this view.")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        fetchEnv()
        picker.reloadAllComponents()
        
        if arrEnvelope.count > 0 {
            txtEnvelope.text         = arrEnvelope[0].name
            txtAmount.isEnabled      = true
            txtEnvelope.isEnabled    = true
            txtDescription.isEnabled = true
            submitButton.alpha       = 1
        } else {
            txtAmount.isEnabled      = false
            txtEnvelope.isEnabled    = false
            txtDescription.isEnabled = false
            submitButton.alpha       = 0
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
        return arrEnvelope.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txtEnvelope.text = arrEnvelope[row].name
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrEnvelope[row].name
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
    
    public func fetchEnv() {
        arrEnvelope = []
        let fetchData = NSFetchRequest<NSFetchRequestResult>(entityName: "Envelope")
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(fetchData)
            
            for result in searchResults as! [Envelope] {
                arrEnvelope.append(result)
            }
        }
        catch {
            print("Envelopes not found!")
        }
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
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
    }))
        self.present(alert, animated: true, completion: nil)
    }
}
