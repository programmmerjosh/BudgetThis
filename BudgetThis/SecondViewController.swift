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

    // variables
    var nameArray = [String()]
    var tempIncome:Double = 5000
    var Arraylimit:Int = 0
    var bLabel:Bool = true
    var limitLength = 12
    var mod:Int = 0
    
    struct Gvars
    {
        static var blanklabelHeight:Int = 12
    }
    
    // percentage label outlets
    @IBOutlet var lblTotal: UILabel!
    @IBOutlet var lblFirst: UILabel!
    @IBOutlet var lblSecond: UILabel!
    @IBOutlet var lblThird: UILabel!
    @IBOutlet var lblFourth: UILabel!
    @IBOutlet var lblFifth: UILabel!
    @IBOutlet var lblSixth: UILabel!
    @IBOutlet var lblSeventh: UILabel!
    @IBOutlet var lblEighth: UILabel!
    @IBOutlet var lblNineth: UILabel!
    @IBOutlet var lblTenth: UILabel!
    @IBOutlet var lblEleventh: UILabel!
    @IBOutlet var lblTwelfth: UILabel!
    @IBOutlet var lblThirteenth: UILabel!
    @IBOutlet var lblFourteenth: UILabel!
    @IBOutlet var lblFifteenth: UILabel!
    @IBOutlet var lblSixteenth: UILabel!
    @IBOutlet var lblSeventeenth: UILabel!
    @IBOutlet var lblEighteenth: UILabel!
    @IBOutlet var lblNineteenth: UILabel!
    @IBOutlet var lblTwentieth: UILabel!
    @IBOutlet var lblTwentyFirst: UILabel!
    @IBOutlet var lblTwentySecond: UILabel!
    @IBOutlet var lblTwentyThird: UILabel!
    @IBOutlet var lblTwentyFourth: UILabel!
    @IBOutlet var lblTwentyFifth: UILabel!
    @IBOutlet var lblTwentySixth: UILabel!
    @IBOutlet var lblTwentySeventh: UILabel!
    @IBOutlet var lblTwentyEighth: UILabel!
    @IBOutlet var lblTwentyNineth: UILabel!
    @IBOutlet var lblThirtieth: UILabel!
    @IBOutlet var lblAvailableBal: UILabel!
    @IBOutlet var lblAvBalText: UILabel!
    
    // title label outlets
    @IBOutlet var lbl1: UILabel!
    @IBOutlet var lbl2: UILabel!
    @IBOutlet var lbl3: UILabel!
    @IBOutlet var lbl4: UILabel!
    @IBOutlet var lbl5: UILabel!
    @IBOutlet var lbl6: UILabel!
    @IBOutlet var lbl7: UILabel!
    @IBOutlet var lbl8: UILabel!
    @IBOutlet var lbl9: UILabel!
    @IBOutlet var lbl10: UILabel!
    @IBOutlet var lbl11: UILabel!
    @IBOutlet var lbl12: UILabel!
    @IBOutlet var lbl13: UILabel!
    @IBOutlet var lbl14: UILabel!
    @IBOutlet var lbl15: UILabel!
    @IBOutlet var lbl16: UILabel!
    @IBOutlet var lbl17: UILabel!
    @IBOutlet var lbl18: UILabel!
    @IBOutlet var lbl19: UILabel!
    @IBOutlet var lbl20: UILabel!
    @IBOutlet var lbl21: UILabel!
    @IBOutlet var lbl22: UILabel!
    @IBOutlet var lbl23: UILabel!
    @IBOutlet var lbl24: UILabel!
    @IBOutlet var lbl25: UILabel!
    @IBOutlet var lbl26: UILabel!
    @IBOutlet var lbl27: UILabel!
    @IBOutlet var lbl28: UILabel!
    @IBOutlet var lbl29: UILabel!
    @IBOutlet var lbl30: UILabel!
    @IBOutlet var lblAvalableText: UILabel!
    @IBOutlet var lblMyIncomeText: UILabel!
    
    // textfield outlets
    @IBOutlet var txtTotal: UITextField!
    @IBOutlet var txtFirst: UITextField!
    @IBOutlet var txtSecond: UITextField!
    @IBOutlet var txtThird: UITextField!
    @IBOutlet var txtFourth: UITextField!
    @IBOutlet var txtFifth: UITextField!
    @IBOutlet var txtSixth: UITextField!
    @IBOutlet var txtSeventh: UITextField!
    @IBOutlet var txtEighth: UITextField!
    @IBOutlet var txtNineth: UITextField!
    @IBOutlet var txtTenth: UITextField!
    @IBOutlet var txtEleventh: UITextField!
    @IBOutlet var txtTwelfth: UITextField!
    @IBOutlet var txtThirteenth: UITextField!
    @IBOutlet var txtFourteenth: UITextField!
    @IBOutlet var txtFifteenth: UITextField!
    @IBOutlet var txtSixteenth: UITextField!
    @IBOutlet var txtSeventeenth: UITextField!
    @IBOutlet var txtEighteenth: UITextField!
    @IBOutlet var txtNineteenth: UITextField!
    @IBOutlet var txtTwentieth: UITextField!
    @IBOutlet var txtTwentyFirst: UITextField!
    @IBOutlet var txtTwentySecond: UITextField!
    @IBOutlet var txtTwentyThird: UITextField!
    @IBOutlet var txtTwentyFourth: UITextField!
    @IBOutlet var txtTwentyFifth: UITextField!
    @IBOutlet var txtTwentySixth: UITextField!
    @IBOutlet var txtTwentySeventh: UITextField!
    @IBOutlet var txtTwentyEighth: UITextField!
    @IBOutlet var txtTwentyNineth: UITextField!
    @IBOutlet var txtThirtieth: UITextField!
    
    @IBOutlet var txtRnm1: UITextField!
    @IBOutlet var txtRnm2: UITextField!
    @IBOutlet var txtRnm3: UITextField!
    @IBOutlet var txtRnm4: UITextField!
    @IBOutlet var txtRnm5: UITextField!
    @IBOutlet var txtRnm6: UITextField!
    @IBOutlet var txtRnm7: UITextField!
    @IBOutlet var txtRnm8: UITextField!
    @IBOutlet var txtRnm9: UITextField!
    @IBOutlet var txtRnm10: UITextField!
    @IBOutlet var txtRnm11: UITextField!
    @IBOutlet var txtRnm12: UITextField!
    @IBOutlet var txtRnm13: UITextField!
    @IBOutlet var txtRnm14: UITextField!
    @IBOutlet var txtRnm15: UITextField!
    @IBOutlet var txtRnm16: UITextField!
    @IBOutlet var txtRnm17: UITextField!
    @IBOutlet var txtRnm18: UITextField!
    @IBOutlet var txtRnm19: UITextField!
    @IBOutlet var txtRnm20: UITextField!
    @IBOutlet var txtRnm21: UITextField!
    @IBOutlet var txtRnm22: UITextField!
    @IBOutlet var txtRnm23: UITextField!
    @IBOutlet var txtRnm24: UITextField!
    @IBOutlet var txtRnm25: UITextField!
    @IBOutlet var txtRnm26: UITextField!
    @IBOutlet var txtRnm27: UITextField!
    @IBOutlet var txtRnm28: UITextField!
    @IBOutlet var txtRnm29: UITextField!
    @IBOutlet var txtRnm30: UITextField!
    
    // new entry outlets
    @IBOutlet var lblNFE: UILabel!
    @IBOutlet var lblFN: UILabel!
    @IBOutlet var txtFN: UITextField!
    @IBOutlet var SubmitButOutlet: UIButton!
    @IBOutlet var cancelButOutlet: UIButton!
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        guard let text = textField.text else { return true }
        let newLength = text.count + string.count - range.length
        return newLength <= limitLength
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // initialise textfields
        textDelegates()
        
        // check for first run
        if (FirstViewController.stR.firstRun == true)
        {
            addInitialFieldsToDatabase()
        }
        
        // calc num of data
        Arraylimit = calcNumOfDataOriginal()
        
        // fetch data
        fetchDatabaseDataThenDisplayIt()
        
        alphaOne(on: false)
        endRenaming()
        hideRequiredFields(numOfFields: Arraylimit, side: "right_buttons", justLastField: false)
        hideRequiredFields(numOfFields: Arraylimit, side: "left_labels", justLastField: false)
        hideRequiredFields(numOfFields: 1, side: "right_textfields", justLastField: false)
        showFields(field: Arraylimit)
        updateTotalDisplays()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        FirstViewController.AppUtility.lockOrientation(.portrait)
        // Or to rotate and lock
        // AppUtility.lockOrientation(.portrait, andRotateTo: .portrait)
        
        if (bLabel) {
            let sizeConstraint:Int = Int(txtTotal.bounds.height)
            moveBlankLabelAppropriately(sizeConstraint: sizeConstraint)
            blankLabelTopConstraint.constant = CGFloat(Gvars.blanklabelHeight)
            bLabel =  false
        }
        adjustFontSizesToFitTheWidths()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // Don't forget to reset when view is being removed
        FirstViewController.AppUtility.lockOrientation(.all)
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // called when 'return' key pressed. return NO to ignore.
        
        txtTotal.resignFirstResponder()
        txtFirst.resignFirstResponder()
        txtSecond.resignFirstResponder()
        txtThird.resignFirstResponder()
        txtFourth.resignFirstResponder()
        txtFifth.resignFirstResponder()
        txtSixth.resignFirstResponder()
        txtSeventh.resignFirstResponder()
        txtEighth.resignFirstResponder()
        txtNineth.resignFirstResponder()
        txtTenth.resignFirstResponder()
        txtEleventh.resignFirstResponder()
        txtTwelfth.resignFirstResponder()
        txtThirteenth.resignFirstResponder()
        txtFourteenth.resignFirstResponder()
        txtFifteenth.resignFirstResponder()
        txtSixteenth.resignFirstResponder()
        txtSeventeenth.resignFirstResponder()
        txtEighteenth.resignFirstResponder()
        txtNineteenth.resignFirstResponder()
        txtTwentieth.resignFirstResponder()
        txtTwentyFirst.resignFirstResponder()
        txtTwentySecond.resignFirstResponder()
        txtTwentyThird.resignFirstResponder()
        txtTwentyFourth.resignFirstResponder()
        txtTwentyFifth.resignFirstResponder()
        txtTwentySixth.resignFirstResponder()
        txtTwentySeventh.resignFirstResponder()
        txtTwentyEighth.resignFirstResponder()
        txtTwentyNineth.resignFirstResponder()
        txtThirtieth.resignFirstResponder()
        
        txtRnm1.resignFirstResponder()
        txtRnm2.resignFirstResponder()
        txtRnm3.resignFirstResponder()
        txtRnm4.resignFirstResponder()
        txtRnm5.resignFirstResponder()
        txtRnm6.resignFirstResponder()
        txtRnm7.resignFirstResponder()
        txtRnm8.resignFirstResponder()
        txtRnm9.resignFirstResponder()
        txtRnm10.resignFirstResponder()
        txtRnm11.resignFirstResponder()
        txtRnm12.resignFirstResponder()
        txtRnm13.resignFirstResponder()
        txtRnm14.resignFirstResponder()
        txtRnm15.resignFirstResponder()
        txtRnm16.resignFirstResponder()
        txtRnm17.resignFirstResponder()
        txtRnm18.resignFirstResponder()
        txtRnm19.resignFirstResponder()
        txtRnm20.resignFirstResponder()
        txtRnm21.resignFirstResponder()
        txtRnm22.resignFirstResponder()
        txtRnm23.resignFirstResponder()
        txtRnm24.resignFirstResponder()
        txtRnm25.resignFirstResponder()
        txtRnm26.resignFirstResponder()
        txtRnm27.resignFirstResponder()
        txtRnm28.resignFirstResponder()
        txtRnm29.resignFirstResponder()
        txtRnm30.resignFirstResponder()
        txtFN.resignFirstResponder()
        
        return true
    }
    
    // new entry action
    @IBAction func SubmitButAction(_ sender: UIButton) {
        
        Arraylimit = calcNumOfDataOriginal()
        var inputStr = ""
        if (txtFN.text != "")
        {
            inputStr = txtFN.text!
        }
        if (inputStr != "" && Arraylimit < 30 && disallowSameName(name: inputStr))
        {
            let sizeConstraint:Int = Int(txtRnm1.bounds.height)
            global.autoNumber = String(Arraylimit)
            global.name = txtFN.text!
            global.amount = 0
            global.percent = 0
            
            insertGlobalsToDatabase()
            insertInitialTotalsToDatabase()
            fetchDatabaseDataThenDisplayIt()
            addNewFieldtoArray(Name: global.name)
            
            UIView.animate(withDuration: 0.6, animations: {
                self.alphaOne(on: false)
                self.showFields(field: self.Arraylimit + 1)
                self.moveBlankLabel(direction: "Down", sizeConstraint: sizeConstraint)
                self.view.layoutIfNeeded()
            })
            txtFN.resignFirstResponder()
        }
    }
    
    @IBAction func cancelButAction(_ sender: UIButton) {
        
        Arraylimit = calcNumOfDataOriginal()
        
        UIView.animate(withDuration: 0.6, animations: {
            self.alphaOne(on: false)
            self.showFields(field: self.Arraylimit)
            self.view.layoutIfNeeded()
        })
        txtFN.resignFirstResponder()
    }
    
    
    // button outlets
    @IBOutlet var firstPlusOutlet: UIButton!
    @IBOutlet var secondPlusOutlet: UIButton!
    @IBOutlet var thirdPlusOutlet: UIButton!
    @IBOutlet var FourthPlusOutlet: UIButton!
    @IBOutlet var FifthPlusOutlet: UIButton!
    @IBOutlet var SixthPlusOutlet: UIButton!
    @IBOutlet var SeventhPlusOutlet: UIButton!
    @IBOutlet var EighthPlusOutlet: UIButton!
    @IBOutlet var NinethPlusOutlet: UIButton!
    @IBOutlet var TenthPlusOutlet: UIButton!
    @IBOutlet var EleventhPlusOutlet: UIButton!
    @IBOutlet var TwelfthPlusOutlet: UIButton!
    @IBOutlet var ThirteenthPlusOutlet: UIButton!
    @IBOutlet var FourteenthPlusOutlet: UIButton!
    @IBOutlet var FifteenthPlusOutlet: UIButton!
    @IBOutlet var SixteenthPlusOutlet: UIButton!
    @IBOutlet var SeventeenthPlusOutlet: UIButton!
    @IBOutlet var EighteenthPlusOutlet: UIButton!
    @IBOutlet var NineteenthPlusOutlet: UIButton!
    @IBOutlet var TwentiethPlusOutlet: UIButton!
    @IBOutlet var TwentyFirstPlusOutlet: UIButton!
    @IBOutlet var TwentySecondPlusOutlet: UIButton!
    @IBOutlet var TwentyThirdPlusOutlet: UIButton!
    @IBOutlet var TwentyFourthPlusOutlet: UIButton!
    @IBOutlet var TwentyFifthPlusOutlet: UIButton!
    @IBOutlet var TwentySixthPlusOutlet: UIButton!
    @IBOutlet var TwentySeventhPlusOutlet: UIButton!
    @IBOutlet var TwentyEighthPlusOutlet: UIButton!
    @IBOutlet var TwentyNinethPlusOutlet: UIButton!
    @IBOutlet var ThirtiethPlusOutlet: UIButton!
    
    @IBOutlet var firstMinusOutlet: UIButton!
    @IBOutlet var secondMinusOutlet: UIButton!
    @IBOutlet var thirdMinusOutlet: UIButton!
    @IBOutlet var FourthMinusOutlet: UIButton!
    @IBOutlet var FifthMinusOutlet: UIButton!
    @IBOutlet var SixthMinusOutlet: UIButton!
    @IBOutlet var SeventhMinusOutlet: UIButton!
    @IBOutlet var EighthMinusOutlet: UIButton!
    @IBOutlet var NinethMinusOutlet: UIButton!
    @IBOutlet var TenthMinusOutlet: UIButton!
    @IBOutlet var EleventhMinusOutlet: UIButton!
    @IBOutlet var TwelfthMinusOutlet: UIButton!
    @IBOutlet var ThirteenthMinusOutlet: UIButton!
    @IBOutlet var FourteenthMinusOutlet: UIButton!
    @IBOutlet var FifteenthMinusOutlet: UIButton!
    @IBOutlet var SixteenthMinusOutlet: UIButton!
    @IBOutlet var SeventeenthMinusOutlet: UIButton!
    @IBOutlet var EighteenthMinusOutlet: UIButton!
    @IBOutlet var NineteenthMinusOutlet: UIButton!
    @IBOutlet var TwentiethMinusOutlet: UIButton!
    @IBOutlet var TwentyFirstMinusOutlet: UIButton!
    @IBOutlet var TwentySecondMinusOutlet: UIButton!
    @IBOutlet var TwentyThirdMinusOutlet: UIButton!
    @IBOutlet var TwentyFourthMinusOutlet: UIButton!
    @IBOutlet var TwentyFifthMinusOutlet: UIButton!
    @IBOutlet var TwentySixthMinusOutlet: UIButton!
    @IBOutlet var TwentySeventhMinusOutlet: UIButton!
    @IBOutlet var TwentyEighthMinusOutlet: UIButton!
    @IBOutlet var TwentyNinethMinusOutlet: UIButton!
    @IBOutlet var ThirtiethMinusOutlet: UIButton!
    
    @IBOutlet var addFieldOutlet: UIButton!
    @IBOutlet var removeFieldOutlet: UIButton!
    @IBOutlet var renameFieldsOutlet: UIButton!
    @IBOutlet var doneRenamingOutlet: UIButton!
    
    @IBOutlet var segmentSelectorOutlet: UISegmentedControl!
    @IBOutlet var SegPercOutlet: UILabel!
    @IBOutlet var SegUnitsOutlet: UILabel!
    
    @IBAction func doneRenamingAction(_ sender: UIButton) {
        
        if (disallowRenameToSameName())
        {
            nameChangeAddToDatabase()
            nameChangeToArray()
            fetchDatabaseDataThenDisplayIt()
            Arraylimit = calcNumOfDataOriginal()
            
            UIView.animate(withDuration: 0.6, animations: {
                self.endRenaming()
                self.alphaTwo(on: false)
                self.showFields(field: self.Arraylimit)
            })
        }
    }
    
    // constraint outlets
    @IBOutlet var blankLabelTopConstraint: NSLayoutConstraint!
    
    // adding a percentage to the first row
    @IBAction func addFirst(_ sender: UIButton) {
        
        retrievepercent(autoNumber: "0")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl1.text!
        lblFirst.text = String(Double(round(100*global.percent)/100)) + "%"
        txtFirst.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    // subtracting a percentage from the first row
    @IBAction func minusFirst(_ sender: UIButton) {
        
        retrievepercent(autoNumber: "0")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl1.text!
        lblFirst.text = String(Double(round(100*global.percent)/100)) + "%"
        txtFirst.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    // adding a percentage to the second row
    @IBAction func addSecond(_ sender: UIButton) {

        retrievepercent(autoNumber: "1")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl2.text!
        lblSecond.text = String(Double(round(100*global.percent)/100)) + "%"
        txtSecond.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    // subtracting a percentage from the second row
    @IBAction func minusSecond(_ sender: UIButton) {

        retrievepercent(autoNumber: "1")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl2.text!
        lblSecond.text = String(Double(round(100*global.percent)/100)) + "%"
        txtSecond.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    // adding a percentage to the third row
    @IBAction func addThird(_ sender: UIButton) {
        
        retrievepercent(autoNumber: "2")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl3.text!
        lblThird.text = String(Double(round(100*global.percent)/100)) + "%"
        txtThird.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    // subtracting a percentage from the third row
    @IBAction func minusThird(_ sender: UIButton) {
        
        retrievepercent(autoNumber: "2")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl3.text!
        lblThird.text = String(Double(round(100*global.percent)/100)) + "%"
        txtThird.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addFourth(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "3")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl4.text!
        lblFourth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtFourth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusFourth(_ sender: UIButton) {

        retrievepercent(autoNumber: "3")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl4.text!
        lblFourth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtFourth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addFifth(_ sender: UIButton) {

        retrievepercent(autoNumber: "4")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl5.text!
        lblFifth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtFifth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusFifth(_ sender: UIButton) {

        retrievepercent(autoNumber: "4")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl5.text!
        lblFifth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtFifth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addSixth(_ sender: UIButton) {
        
        retrievepercent(autoNumber: "5")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl6.text!
        lblSixth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtSixth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusSixth(_ sender: UIButton) {

        retrievepercent(autoNumber: "5")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl6.text!
        lblSixth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtSixth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addSeventh(_ sender: UIButton) {

        retrievepercent(autoNumber: "6")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl7.text!
        lblSeventh.text = String(Double(round(100*global.percent)/100)) + "%"
        txtSeventh.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusSeventh(_ sender: UIButton) {

        retrievepercent(autoNumber: "6")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl7.text!
        lblSeventh.text = String(Double(round(100*global.percent)/100)) + "%"
        txtSeventh.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addEighth(_ sender: UIButton) {

        retrievepercent(autoNumber: "7")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl8.text!
        lblEighth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtEighth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusEighth(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "7")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl8.text!
        lblEighth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtEighth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addNineth(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "8")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl9.text!
        lblNineth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtNineth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusNineth(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "8")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl9.text!
        lblNineth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtNineth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addTenth(_ sender: UIButton) {

        retrievepercent(autoNumber: "9")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl10.text!
        lblTenth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTenth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusTenth(_ sender: UIButton) {

        retrievepercent(autoNumber: "9")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl10.text!
        lblTenth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTenth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addEleventh(_ sender: UIButton) {

        retrievepercent(autoNumber: "10")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl11.text!
        lblEleventh.text = String(Double(round(100*global.percent)/100)) + "%"
        txtEleventh.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusEleventh(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "10")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl11.text!
        lblEleventh.text = String(Double(round(100*global.percent)/100)) + "%"
        txtEleventh.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addTwelfth(_ sender: UIButton) {

        retrievepercent(autoNumber: "11")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl12.text!
        lblTwelfth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwelfth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusTwelfth(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "11")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl12.text!
        lblTwelfth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwelfth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addThirteenth(_ sender: UIButton) {

        retrievepercent(autoNumber: "12")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl13.text!
        lblThirteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtThirteenth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusThirteenth(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "12")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl13.text!
        lblThirteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtThirteenth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addFourteenth(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "13")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl14.text!
        lblFourteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtFourteenth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusFourteenth(_ sender: UIButton) {

        retrievepercent(autoNumber: "13")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl14.text!
        lblFourteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtFourteenth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addFifteenth(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "14")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl15.text!
        lblFifteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtFifteenth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusFifteenth(_ sender: UIButton) {

        retrievepercent(autoNumber: "14")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl15.text!
        lblFifteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtFifteenth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addSixteenth(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "15")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl16.text!
        lblSixteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtSixteenth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusSixteenth(_ sender: UIButton) {

        retrievepercent(autoNumber: "15")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl16.text!
        lblSixteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtSixteenth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addSeventeenth(_ sender: UIButton) {

        retrievepercent(autoNumber: "16")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl17.text!
        lblSeventeenth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtSeventeenth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusSeventeenth(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "16")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl17.text!
        lblSeventeenth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtSeventeenth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addEighteenth(_ sender: UIButton) {

        retrievepercent(autoNumber: "17")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl18.text!
        lblEighteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtEighteenth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusEighteenth(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "17")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl18.text!
        lblEighteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtEighteenth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addNineteenth(_ sender: UIButton) {

        retrievepercent(autoNumber: "18")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl19.text!
        lblNineteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtNineteenth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusNineteenth(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "18")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl19.text!
        lblNineteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtNineteenth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addTwentieth(_ sender: UIButton) {

        retrievepercent(autoNumber: "19")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl20.text!
        lblTwentieth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentieth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusTwentieth(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "19")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl20.text!
        lblTwentieth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentieth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addTwentyfirst(_ sender: UIButton) {

        retrievepercent(autoNumber: "20")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl21.text!
        lblTwentyFirst.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentyFirst.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusTwentyfirst(_ sender: UIButton) {

        retrievepercent(autoNumber: "20")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl21.text!
        lblTwentyFirst.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentyFirst.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addTwentysecond(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "21")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl22.text!
        lblTwentySecond.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentySecond.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusTwentysecond(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "21")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl22.text!
        lblTwentySecond.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentySecond.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addTwentythird(_ sender: UIButton) {

        retrievepercent(autoNumber: "22")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl23.text!
        lblTwentyThird.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentyThird.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusTwentythird(_ sender: UIButton) {

        retrievepercent(autoNumber: "22")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl23.text!
        lblTwentyThird.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentyThird.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addTwentyfourth(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "23")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl24.text!
        lblTwentyFourth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentyFourth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusTwentyfourth(_ sender: UIButton) {

        retrievepercent(autoNumber: "23")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl24.text!
        lblTwentyFourth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentyFourth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addTwentyfifth(_ sender: UIButton) {

        retrievepercent(autoNumber: "24")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl25.text!
        lblTwentyFifth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentyFifth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusTwentyfifth(_ sender: UIButton) {

        retrievepercent(autoNumber: "24")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl25.text!
        lblTwentyFifth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentyFifth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addTwentysixth(_ sender: UIButton) {

        retrievepercent(autoNumber: "25")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl26.text!
        lblTwentySixth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentySixth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusTwentysixth(_ sender: UIButton) {

        retrievepercent(autoNumber: "25")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl26.text!
        lblTwentySixth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentySixth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addTwentyseventh(_ sender: UIButton) {

        retrievepercent(autoNumber: "26")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl27.text!
        lblTwentySeventh.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentySeventh.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusTwentyseventh(_ sender: UIButton) {

        retrievepercent(autoNumber: "26")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl27.text!
        lblTwentySeventh.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentySeventh.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addTwentyeighth(_ sender: UIButton) {

        retrievepercent(autoNumber: "27")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl28.text!
        lblTwentyEighth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentyEighth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusTwentyeighth(_ sender: UIButton) {

        retrievepercent(autoNumber: "27")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl28.text!
        lblTwentyEighth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentyEighth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addTwentynineth(_ sender: UIButton) {

        retrievepercent(autoNumber: "28")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl29.text!
        lblTwentyNineth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentyNineth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusTwentynineth(_ sender: UIButton) {

        retrievepercent(autoNumber: "28")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl29.text!
        lblTwentyNineth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtTwentyNineth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func addThirtieth(_ sender: UIButton) {

        retrievepercent(autoNumber: "29")
        addTopercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl30.text!
        lblThirtieth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtThirtieth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func minusThirtieth(_ sender: UIButton) {
    
        retrievepercent(autoNumber: "29")
        subtractFrompercent()
        amountOrPercentChangeInArray(name: global.name)
        global.name = lbl30.text!
        lblThirtieth.text = String(Double(round(100*global.percent)/100)) + "%"
        txtThirtieth.text = String(Double(round(100*global.amount)/100))
        updateTotalDisplays()
    }
    
    @IBAction func AddNewFieldButtonAction(_ sender: UIButton) {
        
        // hide everything in scrollview except the new entry stuff
        Arraylimit = calcNumOfDataOriginal()
        if (Arraylimit < 30)
        {
            self.txtFN.text = ""
            UIView.animate(withDuration: 0.3, animations: {
                self.alphaOne(on: true)
                self.hideRequiredFields(numOfFields: self.Arraylimit + 1, side: "left_labels", justLastField: false)
                self.hideRequiredFields(numOfFields: 1, side: "right_textfields", justLastField: false)
                self.hideRequiredFields(numOfFields: 1, side: "right_buttons", justLastField: false)
            })
        }
    }
    
    @IBAction func DeleteMostRecentFieldButtonAction(_ sender: UIButton) {
        
        let numData:Int = calcNumOfDataOriginal()
        let sizeConstraint:Int = Int(txtRnm1.bounds.height)
        
        if (numData > 3)
        {
            let name:String = calcLastName()
            removeLastFieldFromArray(lastName: name)
            deleteLastFieldCreated(autoNumber: String(numData - 1))
            
            UIView.animate(withDuration: 0.6, animations: {
                self.hideRequiredFields(numOfFields: numData, side: "left_labels", justLastField: true)
                self.hideRequiredFields(numOfFields: numData, side: "right_textfields", justLastField: true)
                self.hideRequiredFields(numOfFields: numData, side: "right_buttons", justLastField: true)
                self.moveBlankLabel(direction: "Up", sizeConstraint: sizeConstraint)
            })
        }
        updateTotalDisplays()
    }
    @IBAction func RenameAFieldButtonAction(_ sender: UIButton) {
        
        initialRenameSet()
        UIView.animate(withDuration: 0.6, animations: {
            self.alphaTwo(on: true)
            self.startRenaming()
        })
    }
    
    @IBAction func TotalEdited(_ sender: UITextField) {
        
        limitLength = 12
        let input:String = txtTotal.text!
        let income:Double = validDouble(double: input)
        if (income == 0)
        {
            txtTotal.text = ""
        }
        tempIncome = income
        incomeChange()
        addIncomeAmount(incomeAmount: tempIncome)
        updateTotalDisplays()
    }
    @IBAction func FirstEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtFirst.text = ""
            lblFirst.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "0", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblFirst.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func SecondEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtSecond.text = ""
            lblSecond.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "1", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblSecond.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func ThirdEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtThird.text = ""
            lblThird.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "2", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblThird.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func FourthEdited(_ sender: UITextField) {
    
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtFourth.text = ""
            lblFourth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "3", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblFourth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func FifthEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtFifth.text = ""
            lblFifth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "4", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblFifth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func SixthEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtSixth.text = ""
            lblSixth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "5", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblSixth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func SeventhEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtSeventh.text = ""
            lblSeventh.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "6", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblSeventh.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func EighthEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtEighth.text = ""
            lblEighth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "7", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblEighth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func NinethEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtNineth.text = ""
            lblNineth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "8", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblNineth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func TenthEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtTenth.text = ""
            lblTenth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "9", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblTenth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func EleventhEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtEleventh.text = ""
            lblEleventh.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "10", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblEleventh.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func TwelfthEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtTwelfth.text = ""
            lblTwelfth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "11", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblTwelfth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func ThirteenthEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtThirteenth.text = ""
            lblThirteenth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "12", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblThirteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func FourteenthEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtFourteenth.text = ""
            lblFourteenth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "13", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblFourteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func FifteenthEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtFifteenth.text = ""
            lblFifteenth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "14", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblFifteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func SixteenthEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtSixteenth.text = ""
            lblSixteenth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "15", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblSixteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func SeventeenthEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtSeventeenth.text = ""
            lblSeventeenth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "16", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblSeventeenth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func EighteenthEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtEighteenth.text = ""
            lblEighteenth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "17", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblEighteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func NineteenthEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtNineteenth.text = ""
            lblNineteenth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "18", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblNineteenth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func TwentiethEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtTwentieth.text = ""
            lblTwentieth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "19", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblTwentieth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func TwentyFirst(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtTwentyFirst.text = ""
            lblTwentyFirst.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "20", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblTwentyFirst.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func TwentySecondEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtTwentySecond.text = ""
            lblTwentySecond.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "21", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblTwentySecond.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func TwentyThirdEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtTwentyThird.text = ""
            lblTwentyThird.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "22", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblTwentyThird.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func TwentyFourthEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtTwentyFourth.text = ""
            lblTwentyFourth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "23", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblTwentyFourth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func TwentyFifthEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtTwentyFifth.text = ""
            lblTwentyFifth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "24", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblTwentyFifth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func TwentySixthEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtTwentySixth.text = ""
            lblTwentySixth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "25", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblTwentySixth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func TwentySeventhEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtTwentySeventh.text = ""
            lblTwentySeventh.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "26", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblTwentySeventh.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func TwentyEighthEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtTwentyEighth.text = ""
            lblTwentyEighth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "27", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblTwentyEighth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func TwentyNinethEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtTwentyNineth.text = ""
            lblTwentyNineth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "28", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblTwentyNineth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    @IBAction func ThirtiethEdited(_ sender: UITextField) {
        
        limitLength = 12
        var field = userInputAmountInTextField(sender: sender.text!)
        switch field {
        case "":
            txtThirtieth.text = ""
            lblThirtieth.text = "0.0%"
        default:
            field = userInputAmountInTextField(sender: field)
            fieldAmountChange(autoNumber: "29", newAmount: validDouble(double: field))
            insertGlobalsToDatabase()
            lblThirtieth.text = String(Double(round(100*global.percent)/100)) + "%"
        }
        amountOrPercentChangeInArray(name: global.name)
    }
    
    @IBAction func txt1AmountClicked(_ sender: UITextField) {
        if (txtFirst.text == "0.0") { txtFirst.text = "" }
    }
    @IBAction func txt2AmountClicked(_ sender: UITextField) {
        if (txtSecond.text == "0.0") { txtSecond.text = "" }
    }
    @IBAction func txt3AmountClicked(_ sender: UITextField) {
        if (txtThird.text == "0.0") { txtThird.text = "" }
    }
    @IBAction func txt4AmountClicked(_ sender: UITextField) {
        if (txtFourth.text == "0.0") { txtFourth.text = "" }
    }
    @IBAction func txt5AmountClicked(_ sender: UITextField) {
        if (txtFifth.text == "0.0") { txtFifth.text = "" }
    }
    @IBAction func txt6AmountClicked(_ sender: UITextField) {
        if (txtSixth.text == "0.0") { txtSixth.text = "" }
    }
    @IBAction func txt7AmountClicked(_ sender: UITextField) {
        if (txtSeventh.text == "0.0") { txtSeventh.text = "" }
    }
    @IBAction func txt8AmountClicked(_ sender: UITextField) {
        if (txtEighth.text == "0.0") { txtEighth.text = "" }
    }
    @IBAction func txt9AmountClicked(_ sender: UITextField) {
        if (txtNineth.text == "0.0") { txtNineth.text = "" }
    }
    @IBAction func txt10AmountClicked(_ sender: UITextField) {
        if (txtTenth.text == "0.0") { txtTenth.text = "" }
    }
    @IBAction func txt11AmountClicked(_ sender: UITextField) {
        if (txtEleventh.text == "0.0") { txtEleventh.text = "" }
    }
    @IBAction func txt12AmountClicked(_ sender: UITextField) {
        if (txtTwelfth.text == "0.0") { txtTwelfth.text = "" }
    }
    @IBAction func txt13AmountClicked(_ sender: UITextField) {
        if (txtThirteenth.text == "0.0") { txtThirteenth.text = "" }
    }
    @IBAction func txt14AmountClicked(_ sender: UITextField) {
        if (txtFourteenth.text == "0.0") { txtFourteenth.text = "" }
    }
    @IBAction func txt15AmountClicked(_ sender: UITextField) {
        if (txtFifteenth.text == "0.0") { txtFifteenth.text = "" }
    }
    @IBAction func txt16AmountClicked(_ sender: UITextField) {
        if (txtSixteenth.text == "0.0") { txtSixteenth.text = "" }
    }
    @IBAction func txt17AmountClicked(_ sender: UITextField) {
        if (txtSeventeenth.text == "0.0") { txtSeventeenth.text = "" }
    }
    @IBAction func txt18AmountClicked(_ sender: UITextField) {
        if (txtEighteenth.text == "0.0") { txtEighteenth.text = "" }
    }
    @IBAction func txt19AmountClicked(_ sender: UITextField) {
        if (txtNineteenth.text == "0.0") { txtNineteenth.text = "" }
    }
    @IBAction func txt20AmountClicked(_ sender: UITextField) {
        if (txtTwentieth.text == "0.0") { txtTwentieth.text = "" }
    }
    @IBAction func txt21AmountClicked(_ sender: UITextField) {
        if (txtTwentyFirst.text == "0.0") { txtTwentyFirst.text = "" }
    }
    @IBAction func txt22AmountClicked(_ sender: UITextField) {
        if (txtTwentySecond.text == "0.0") { txtTwentySecond.text = "" }
    }
    @IBAction func txt23AmountClicked(_ sender: UITextField) {
        if (txtTwentyThird.text == "0.0") { txtTwentyThird.text = "" }
    }
    @IBAction func txt24AmountClicked(_ sender: UITextField) {
        if (txtTwentyFourth.text == "0.0") { txtTwentyFourth.text = "" }
    }
    @IBAction func txt25AmountClicked(_ sender: UITextField) {
        if (txtTwentyFifth.text == "0.0") { txtTwentyFifth.text = "" }
    }
    @IBAction func txt26AmountClicked(_ sender: UITextField) {
        if (txtTwentySixth.text == "0.0") { txtTwentySixth.text = "" }
    }
    @IBAction func txt27AmountClicked(_ sender: UITextField) {
        if (txtTwentySeventh.text == "0.0") { txtTwentySeventh.text = "" }
    }
    @IBAction func txt28AmountClicked(_ sender: UITextField) {
        if (txtTwentyEighth.text == "0.0") { txtTwentyEighth.text = "" }
    }
    @IBAction func txt29AmountClicked(_ sender: UITextField) {
        if (txtTwentyNineth.text == "0.0") { txtTwentyNineth.text = "" }
    }
    @IBAction func txt30AmountClicked(_ sender: UITextField) {
        if (txtThirtieth.text == "0.0") { txtThirtieth.text = "" }
    }
    
    @IBAction func EditedNewFieldName(_ sender: UITextField) {
        
        limitLength = 25
        txtFN.adjustsFontSizeToFitWidth = true
    }
    @IBAction func Editedr1(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr2(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr3(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr4(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr5(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr6(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr7(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr8(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr9(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr10(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr11(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr12(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr13(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr14(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr15(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr16(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr17(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr18(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr19(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr20(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr21(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr22(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr23(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr24(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr25(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr26(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr27(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr28(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr29(_ sender: UITextField) {limitLength = 25}
    @IBAction func Editedr30(_ sender: UITextField) {limitLength = 25}
    
    // clicking on 1 or 2 to change between percentage alteration or amount input
    @IBAction func firstSegmentChanged(_ sender: UISegmentedControl) {
        
        mod = mod + 1
        let num:Int = calcNumOfDataOriginal()
        switch (mod % 2) {
        case 1:
            hideRequiredFields(numOfFields: 1, side: "right_buttons", justLastField: false)
            showFields(field: num)
        default:
            hideRequiredFields(numOfFields: 1, side: "right_textfields", justLastField: false)
            showFields(field: num)
        }
    }
    
    @IBAction func hideOpenKeyboard(_ sender: UIButton) {
    
        txtTotal.resignFirstResponder()
        txtFirst.resignFirstResponder()
        txtSecond.resignFirstResponder()
        txtThird.resignFirstResponder()
        txtFourth.resignFirstResponder()
        txtFifth.resignFirstResponder()
        txtSixth.resignFirstResponder()
        txtSeventh.resignFirstResponder()
        txtEighth.resignFirstResponder()
        txtNineth.resignFirstResponder()
        txtTenth.resignFirstResponder()
        txtEleventh.resignFirstResponder()
        txtTwelfth.resignFirstResponder()
        txtThirteenth.resignFirstResponder()
        txtFourteenth.resignFirstResponder()
        txtFifteenth.resignFirstResponder()
        txtSixteenth.resignFirstResponder()
        txtSeventeenth.resignFirstResponder()
        txtEighteenth.resignFirstResponder()
        txtNineteenth.resignFirstResponder()
        txtTwentieth.resignFirstResponder()
        txtTwentyFirst.resignFirstResponder()
        txtTwentySecond.resignFirstResponder()
        txtTwentyThird.resignFirstResponder()
        txtTwentyFourth.resignFirstResponder()
        txtTwentyFifth.resignFirstResponder()
        txtTwentySixth.resignFirstResponder()
        txtTwentySeventh.resignFirstResponder()
        txtTwentyEighth.resignFirstResponder()
        txtTwentyNineth.resignFirstResponder()
        txtThirtieth.resignFirstResponder()
        
        txtRnm1.resignFirstResponder()
        txtRnm2.resignFirstResponder()
        txtRnm3.resignFirstResponder()
        txtRnm4.resignFirstResponder()
        txtRnm5.resignFirstResponder()
        txtRnm6.resignFirstResponder()
        txtRnm7.resignFirstResponder()
        txtRnm8.resignFirstResponder()
        txtRnm9.resignFirstResponder()
        txtRnm10.resignFirstResponder()
        txtRnm11.resignFirstResponder()
        txtRnm12.resignFirstResponder()
        txtRnm13.resignFirstResponder()
        txtRnm14.resignFirstResponder()
        txtRnm15.resignFirstResponder()
        txtRnm16.resignFirstResponder()
        txtRnm17.resignFirstResponder()
        txtRnm18.resignFirstResponder()
        txtRnm19.resignFirstResponder()
        txtRnm20.resignFirstResponder()
        txtRnm21.resignFirstResponder()
        txtRnm22.resignFirstResponder()
        txtRnm23.resignFirstResponder()
        txtRnm24.resignFirstResponder()
        txtRnm25.resignFirstResponder()
        txtRnm26.resignFirstResponder()
        txtRnm27.resignFirstResponder()
        txtRnm28.resignFirstResponder()
        txtRnm29.resignFirstResponder()
        txtRnm30.resignFirstResponder()
        txtFN.resignFirstResponder()
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
    
    public func moveBlankLabelAppropriately(sizeConstraint:Int) {
        
        var next:Int = 0
        var position:Int = 0
        
        switch sizeConstraint {
        case ..<50:
            next = 42
        default:
            next = 72
        }
        
        var i:Int = 3
        while (i < Arraylimit)
        {
            if (Arraylimit > i)
            {
                position = position + next
                Gvars.blanklabelHeight = position
            }
            i += 1
        }
    }
    
    // display percentage correctly at all times
    public func updateTotalDisplays() {
        lblTotal.text = String(Double(round(100*calcAvailablePercent())/100)) + "%"
        lblAvailableBal.text = String(Double(round(100*calcAvailableAmount())/100))
        lblTotal.adjustsFontSizeToFitWidth = true
        lblAvailableBal.adjustsFontSizeToFitWidth = true
    }

    public func addInitialFieldsToDatabase() {
        
        let limit:Int = FirstViewController.stR.fields.count
        var i:Int = 0
        var autoNum:String = String()
        
        while (i < limit)
        {
            let addToOriginal:Original = NSEntityDescription.insertNewObject(forEntityName: "Original", into: DatabaseController.getContext()) as! Original
            autoNum = String(i)
            addToOriginal.autoNumber = autoNum
            addToOriginal.name = FirstViewController.stR.fields[i]
            addToOriginal.percent = 0
            addToOriginal.amount = 0
            DatabaseController.saveContext()
            i += 1
        }
        let addToOriginal:Original = NSEntityDescription.insertNewObject(forEntityName: "Original", into: DatabaseController.getContext()) as! Original
        autoNum = "999"
        addToOriginal.autoNumber = autoNum
        addToOriginal.name = "income"
        addToOriginal.percent = 0
        addToOriginal.amount = tempIncome
        DatabaseController.saveContext()
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
    
    // searches database for a particular field's values and stores values into global vars and deletes result from database
    public func retrievepercent(autoNumber:String) {
        
        let predicate = NSPredicate(format: "autoNumber = %@", autoNumber)
        let retrieve = NSFetchRequest<NSFetchRequestResult>(entityName: "Original")
        retrieve.predicate = predicate
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(retrieve)
            
            for result in searchResults as! [Original] {
                global.percent = result.percent
                global.name = result.name!
                global.autoNumber = result.autoNumber!
                global.amount = result.amount
                DatabaseController.getContext().delete(result)
            }
        }
        catch {
            print("Error! \(error)")
        }
        DatabaseController.saveContext()
    }
    
    // gets correct amount to add, adds amount to global var and then values added to database
    public func addTopercent() {
        
        let addition:Double = amountToAdd()
        global.percent = global.percent + addition
        global.amount = calcAmountFromPercent(percent: global.percent, income: tempIncome)
        insertGlobalsToDatabase()
    }
    
    public func subtractFrompercent() {
        
        let subtraction:Double = amountToSubtract()
        global.percent = global.percent - subtraction
        global.amount = calcAmountFromPercent(percent: global.percent, income: tempIncome)
        insertGlobalsToDatabase()
    }
    
    public func step1inAmountChange() {
        fetchValuesAndAddToGlobals(autoNumber: "0")
        fetchValuesAndAddToGlobals(autoNumber: "1")
        fetchValuesAndAddToGlobals(autoNumber: "2")
        fetchValuesAndAddToGlobals(autoNumber: "3")
        fetchValuesAndAddToGlobals(autoNumber: "4")
        fetchValuesAndAddToGlobals(autoNumber: "5")
        fetchValuesAndAddToGlobals(autoNumber: "6")
        fetchValuesAndAddToGlobals(autoNumber: "7")
        fetchValuesAndAddToGlobals(autoNumber: "8")
        fetchValuesAndAddToGlobals(autoNumber: "9")
        fetchValuesAndAddToGlobals(autoNumber: "10")
        fetchValuesAndAddToGlobals(autoNumber: "11")
        fetchValuesAndAddToGlobals(autoNumber: "12")
        fetchValuesAndAddToGlobals(autoNumber: "13")
        fetchValuesAndAddToGlobals(autoNumber: "14")
        fetchValuesAndAddToGlobals(autoNumber: "15")
        fetchValuesAndAddToGlobals(autoNumber: "16")
        fetchValuesAndAddToGlobals(autoNumber: "17")
        fetchValuesAndAddToGlobals(autoNumber: "18")
        fetchValuesAndAddToGlobals(autoNumber: "19")
        fetchValuesAndAddToGlobals(autoNumber: "20")
        fetchValuesAndAddToGlobals(autoNumber: "21")
        fetchValuesAndAddToGlobals(autoNumber: "22")
        fetchValuesAndAddToGlobals(autoNumber: "23")
        fetchValuesAndAddToGlobals(autoNumber: "24")
        fetchValuesAndAddToGlobals(autoNumber: "25")
        fetchValuesAndAddToGlobals(autoNumber: "26")
        fetchValuesAndAddToGlobals(autoNumber: "27")
        fetchValuesAndAddToGlobals(autoNumber: "28")
        fetchValuesAndAddToGlobals(autoNumber: "29")
    }
    
    // calculates correct amount to add
    public func amountToAdd() -> Double {
        
        step1inAmountChange()
        global.totalAmountFetched = global.totalAmountFetched + global.amount
        global.totalPercentFetched = global.totalPercentFetched + global.percent
        
        let difference:Double = tempIncome - global.totalAmountFetched
        let amountPerPercent:Double = tempIncome * 0.01
        var answer:Double = 0
        
        if (global.totalPercentFetched < 100)
        {
            switch amountPerPercent {
            case _ where amountPerPercent > difference:
                answer = difference / tempIncome * 100
            default:
                answer = 1
            }
        }
        global.totalAmountFetched = 0
        global.totalPercentFetched = 0
        return answer
    }
    
    public func amountToSubtract() -> Double {
        
        step1inAmountChange()
        global.totalAmountFetched = global.totalAmountFetched + global.amount
        global.totalPercentFetched = global.totalPercentFetched + global.percent
        
        let amountPerPercent:Double = tempIncome * 0.01
        var answer:Double = 0
        
        if (global.percent > 0)
        {
            switch amountPerPercent {
            case _ where amountPerPercent > global.amount:
                answer = global.percent
            default:
                answer = 1
            }
        }
        global.totalAmountFetched = 0
        global.totalPercentFetched = 0
        return answer
    }
    
    public func calcAmountFromPercent(percent: Double, income:Double) -> Double {
        let amount:Double = income * (percent / 100)
        return amount
    }
    
    public func fieldAmountChange(autoNumber: String, newAmount:Double) {
        retrievepercent(autoNumber: autoNumber)
        let newPercent:Double = newAmount / tempIncome * 100
        global.percent = newPercent
        global.amount = newAmount
    }
    
    public func fetchValuesAndAddToGlobals(autoNumber:String) {
        
        let predicate = NSPredicate(format: "autoNumber = %@", autoNumber)
        let retrieve = NSFetchRequest<NSFetchRequestResult>(entityName: "Original")
        retrieve.predicate = predicate
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(retrieve)
            
            for result in searchResults as! [Original] {
                global.totalAmountFetched = global.totalAmountFetched + result.amount
                global.totalPercentFetched = global.totalPercentFetched + result.percent
            }
        }
        catch {
            print("Error! \(error)")
        }
        DatabaseController.saveContext()
    }
    
    public func calcTotalAmount() -> Double {
        
        var totalAmounts:Double = 0
        if (txtFirst.text != "") { totalAmounts = totalAmounts + validDouble(double: txtFirst.text!) }
        if (txtSecond.text != "") { totalAmounts = totalAmounts + validDouble(double: txtSecond.text!) }
        if (txtThird.text != "") { totalAmounts = totalAmounts + validDouble(double: txtThird.text!) }
        if (txtFourth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtFourth.text!) }
        if (txtFifth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtFifth.text!) }
        if (txtSixth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtSixth.text!) }
        if (txtSeventh.text != "") { totalAmounts = totalAmounts + validDouble(double: txtSeventh.text!) }
        if (txtEighth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtEighth.text!) }
        if (txtNineth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtNineth.text!) }
        if (txtTenth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtTenth.text!) }
        if (txtEleventh.text != "") { totalAmounts = totalAmounts + validDouble(double: txtEleventh.text!) }
        if (txtTwelfth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtTwelfth.text!) }
        if (txtThirteenth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtThirteenth.text!) }
        if (txtFourteenth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtFourteenth.text!) }
        if (txtFifteenth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtFifteenth.text!) }
        if (txtSixteenth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtSixteenth.text!) }
        if (txtSeventeenth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtSeventeenth.text!) }
        if (txtEighteenth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtEighteenth.text!) }
        if (txtNineteenth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtNineteenth.text!) }
        if (txtTwentieth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtTwentieth.text!) }
        if (txtTwentyFirst.text != "") { totalAmounts = totalAmounts + validDouble(double: txtTwentyFirst.text!) }
        if (txtTwentySecond.text != "") { totalAmounts = totalAmounts + validDouble(double: txtTwentySecond.text!) }
        if (txtTwentyThird.text != "") { totalAmounts = totalAmounts + validDouble(double: txtTwentyThird.text!) }
        if (txtTwentyFourth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtTwentyFourth.text!) }
        if (txtTwentyFifth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtTwentyFifth.text!) }
        if (txtTwentySixth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtTwentySixth.text!) }
        if (txtTwentySeventh.text != "") { totalAmounts = totalAmounts + validDouble(double: txtTwentySeventh.text!) }
        if (txtTwentyEighth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtTwentyEighth.text!) }
        if (txtTwentyNineth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtTwentyNineth.text!) }
        if (txtThirtieth.text != "") { totalAmounts = totalAmounts + validDouble(double: txtThirtieth.text!) }
        return totalAmounts
    }
    
    // validate that input amount is a double and does not exceed available amount
    public func textValueChangeApproved() -> Bool {
        
        let totalAmounts:Double = calcTotalAmount()
        switch totalAmounts {
        case _ where totalAmounts > tempIncome:
            return false
        default:
            return true
        }
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
    
    public func insertGlobalsToDatabase() {
        
        let add:Original = NSEntityDescription.insertNewObject(forEntityName: "Original", into: DatabaseController.getContext()) as! Original
        add.name = global.name
        add.percent = global.percent
        add.autoNumber = String(global.autoNumber)
        add.amount = global.amount
        DatabaseController.saveContext()
    }
    
    public func insertInitialTotalsToDatabase() {
        
        let add:FieldTotals = NSEntityDescription.insertNewObject(forEntityName: "FieldTotals", into: DatabaseController.getContext()) as! FieldTotals
        add.fieldName = global.name
        add.totalAmount = 0
        FirstViewController.stR.totals.append("0.0")
        DatabaseController.saveContext()
    }
    
    public func calcAvailablePercent() -> Double {
        
        let totalAmounts:Double = calcTotalAmount()
        var available:Double = 0
        
        if (txtTotal.text != "")
        {
            available = (tempIncome - totalAmounts) / tempIncome * 100
        }
        return available
    }
    
    public func calcAvailableAmount() -> Double {
        
        let totalAmounts:Double = calcTotalAmount()
        var available:Double = 0
        
        if (txtTotal.text != "")
        {
            available = tempIncome - totalAmounts
        }
        return available
    }
    
    // replaces new amounts in database, percentages stay same
    public func incomeChange() {
        
        var autoNumber:Int = 0
        var go:Bool = true
        var tempAmount:Double = 0
        
        var names = [String()]
        var autonumbers = [String()]
        var amounts = [String()]
        var percentages = [String()]
        
        // add all database data (that doesn't change) as well as new values to arrays and delete database data
        while (go == true)
        {
            go = false
            let predicate = NSPredicate(format: "autoNumber = %@", String(autoNumber))
            let retrieve = NSFetchRequest<NSFetchRequestResult>(entityName: "Original")
            retrieve.predicate = predicate
            
            do {
                let searchResults = try DatabaseController.getContext().fetch(retrieve)
                
                for result in searchResults as! [Original] {
                    tempAmount = tempIncome * (result.percent / 100)
                    names.insert(result.name!, at: autoNumber)
                    amounts.insert(String(tempAmount), at: autoNumber)
                    autonumbers.insert(result.autoNumber!, at: autoNumber)
                    percentages.insert(String(result.percent), at: autoNumber)
                    
                    if (FirstViewController.stR.fields[autoNumber] == result.name!)
                    {
                        let newAmount:Double = tempAmount - Double(FirstViewController.stR.totals[autoNumber])!
                        FirstViewController.stR.amounts[autoNumber] = String(Double(round(100*Double(newAmount))/100))
                        FirstViewController.stR.percentages[autoNumber] = String(Double(round(100*Double(result.percent))/100))
                    }
                    DatabaseController.getContext().delete(result)
                    go = true
                }
            }
            catch {
                print("Error! \(error)")
            }
            DatabaseController.saveContext()
            autoNumber += 1
        }
        names.remove(at: (names.count - 1))
        amounts.remove(at: (amounts.count - 1))
        autonumbers.remove(at: (autonumbers.count - 1))
        percentages.remove(at: (percentages.count - 1))
        
        var i:Int = 0
        let limit = names.count
        while (i < limit)
        {
            let add:Original = NSEntityDescription.insertNewObject(forEntityName: "Original", into: DatabaseController.getContext()) as! Original
            add.name = names[i]
            add.percent = Double(percentages[i])!
            add.autoNumber = autonumbers[i]
            add.amount = Double(amounts[i])!
            newAmountForTextFields(autoNumber: String(i), amount: Double(amounts[i])!)
            DatabaseController.saveContext()
            i += 1
        }
    }
    
    public func calcNumOfDataOriginal() -> Int {
        
        var answer:Int = 0
        let retrieve = NSFetchRequest<NSFetchRequestResult>(entityName: "Original")
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(retrieve)
            answer = searchResults.count - 1
        }
        catch {
            print("Error! \(error)")
        }
        return answer
    }
    
    public func newAmountForTextFields(autoNumber:String, amount:Double) {
        
        var answer = String(Double(round(100*Double(amount))/100))
        if (answer == "0.0") {answer = ""}
        switch autoNumber {
        case "0": txtFirst.text = answer
        case "1": txtSecond.text = answer
        case "2": txtThird.text = answer
        case "3": txtFourth.text = answer
        case "4": txtFifth.text = answer
        case "5": txtSixth.text = answer
        case "6": txtSeventh.text = answer
        case "7": txtEighth.text = answer
        case "8": txtNineth.text = answer
        case "9": txtTenth.text = answer
        case "10": txtEleventh.text = answer
        case "11": txtTwelfth.text = answer
        case "12": txtThirteenth.text = answer
        case "13": txtFourteenth.text = answer
        case "14": txtFifteenth.text = answer
        case "15": txtSixteenth.text = answer
        case "16": txtSeventeenth.text = answer
        case "17": txtEighteenth.text = answer
        case "18": txtNineteenth.text = answer
        case "19": txtTwentieth.text = answer
        case "20": txtTwentyFirst.text = answer
        case "21": txtTwentySecond.text = answer
        case "22": txtTwentyThird.text = answer
        case "23": txtTwentyFourth.text = answer
        case "24": txtTwentyFifth.text = answer
        case "25": txtTwentySixth.text = answer
        case "26": txtTwentySeventh.text = answer
        case "27": txtTwentyEighth.text = answer
        case "28": txtTwentyNineth.text = answer
        case "29": txtThirtieth.text = answer
        default: print("error")
        }
    }
    
    // fetches all data from database and displays it appropriately
    public func fetchDatabaseDataThenDisplayIt() {
        
        var autoNumber:String = String()
        var name:String = String()
        var amount:Double = 0
        var percent:Double = 0
        var usedPercent:Double = 0
        
        let retrieve = NSFetchRequest<NSFetchRequestResult>(entityName: "Original")
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(retrieve)
            
            for result in searchResults as! [Original] {
                autoNumber = result.autoNumber!
                name = result.name!
                amount = result.amount
                percent = result.percent
                whereToDisplayData(autoNumber: autoNumber, name: name, amount: amount, percent: percent)
                usedPercent = usedPercent + percent
            }
        }
        catch {
            print("Error! \(error)")
        }
        displayIncomeAndAvailable(usedPercent: usedPercent)
    }
    
    public func whereToDisplayData(autoNumber:String, name:String, amount:Double, percent:Double) {
        
        switch autoNumber {
        case "0":
            lblFirst.text = String(Double(round(100*percent)/100)) + "%"
            txtFirst.text = String(Double(round(100*amount)/100))
            lbl1.text = String(name)
        case "1":
            lblSecond.text = String(Double(round(100*percent)/100)) + "%"
            txtSecond.text = String(Double(round(100*amount)/100))
            lbl2.text = String(name)
        case "2":
            lblThird.text = String(Double(round(100*percent)/100)) + "%"
            txtThird.text = String(Double(round(100*amount)/100))
            lbl3.text = String(name)
        case "3":
            lblFourth.text = String(Double(round(100*percent)/100)) + "%"
            txtFourth.text = String(Double(round(100*amount)/100))
            lbl4.text = String(name)
        case "4":
            lblFifth.text = String(Double(round(100*percent)/100)) + "%"
            txtFifth.text = String(Double(round(100*amount)/100))
            lbl5.text = String(name)
        case "5":
            lblSixth.text = String(Double(round(100*percent)/100)) + "%"
            txtSixth.text = String(Double(round(100*amount)/100))
            lbl6.text = String(name)
        case "6":
            lblSeventh.text = String(Double(round(100*percent)/100)) + "%"
            txtSeventh.text = String(Double(round(100*amount)/100))
            lbl7.text = String(name)
        case "7":
            lblEighth.text = String(Double(round(100*percent)/100)) + "%"
            txtEighth.text = String(Double(round(100*amount)/100))
            lbl8.text = String(name)
        case "8":
            lblNineth.text = String(Double(round(100*percent)/100)) + "%"
            txtNineth.text = String(Double(round(100*amount)/100))
            lbl9.text = String(name)
        case "9":
            lblTenth.text = String(Double(round(100*percent)/100)) + "%"
            txtTenth.text = String(Double(round(100*amount)/100))
            lbl10.text = String(name)
        case "10":
            lblEleventh.text = String(Double(round(100*percent)/100)) + "%"
            txtEleventh.text = String(Double(round(100*amount)/100))
            lbl11.text = String(name)
        case "11":
            lblTwelfth.text = String(Double(round(100*percent)/100)) + "%"
            txtTwelfth.text = String(Double(round(100*amount)/100))
            lbl12.text = String(name)
        case "12":
            lblThirteenth.text = String(Double(round(100*percent)/100)) + "%"
            txtThirteenth.text = String(Double(round(100*amount)/100))
            lbl13.text = String(name)
        case "13":
            lblFourteenth.text = String(Double(round(100*percent)/100)) + "%"
            txtFourteenth.text = String(Double(round(100*amount)/100))
            lbl14.text = String(name)
        case "14":
            lblFifteenth.text = String(Double(round(100*percent)/100)) + "%"
            txtFifteenth.text = String(Double(round(100*amount)/100))
            lbl15.text = String(name)
        case "15":
            lblSixteenth.text = String(Double(round(100*percent)/100)) + "%"
            txtSixteenth.text = String(Double(round(100*amount)/100))
            lbl16.text = String(name)
        case "16":
            lblSeventeenth.text = String(Double(round(100*percent)/100)) + "%"
            txtSeventeenth.text = String(Double(round(100*amount)/100))
            lbl17.text = String(name)
        case "17":
            lblEighteenth.text = String(Double(round(100*percent)/100)) + "%"
            txtEighteenth.text = String(Double(round(100*amount)/100))
            lbl18.text = String(name)
        case "18":
            lblNineteenth.text = String(Double(round(100*percent)/100)) + "%"
            txtNineteenth.text = String(Double(round(100*amount)/100))
            lbl19.text = String(name)
        case "19":
            lblTwentieth.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentieth.text = String(Double(round(100*amount)/100))
            lbl20.text = String(name)
        case "20":
            lblTwentyFirst.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentyFirst.text = String(Double(round(100*amount)/100))
            lbl21.text = String(name)
        case "21":
            lblTwentySecond.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentySecond.text = String(Double(round(100*amount)/100))
            lbl22.text = String(name)
        case "22":
            lblTwentyThird.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentyThird.text = String(Double(round(100*amount)/100))
            lbl23.text = String(name)
        case "23":
            lblTwentyFourth.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentyFourth.text = String(Double(round(100*amount)/100))
            lbl24.text = String(name)
        case "24":
            lblTwentyFifth.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentyFifth.text = String(Double(round(100*amount)/100))
            lbl25.text = String(name)
        case "25":
            lblTwentySixth.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentySixth.text = String(Double(round(100*amount)/100))
            lbl26.text = String(name)
        case "26":
            lblTwentySeventh.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentySeventh.text = String(Double(round(100*amount)/100))
            lbl27.text = String(name)
        case "27":
            lblTwentyEighth.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentyEighth.text = String(Double(round(100*amount)/100))
            lbl28.text = String(name)
        case "28":
            lblTwentyNineth.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentyNineth.text = String(Double(round(100*amount)/100))
            lbl29.text = String(name)
        case "29":
            lblThirtieth.text = String(Double(round(100*percent)/100)) + "%"
            txtThirtieth.text = String(Double(round(100*amount)/100))
            lbl30.text = String(name)
        case "999":
            tempIncome = Double(amount)
        default:
            print("error")
        }
    }
    
    // displays available % and income
    public func displayIncomeAndAvailable(usedPercent:Double) {
        let avPercent:Double = 100 - usedPercent
        lblTotal.text = String(Double(round(100*avPercent)/100)) + "%"
        txtTotal.text = String(tempIncome)
    }
    
    // income is added to database separately with unique autonumber
    public func addIncomeAmount(incomeAmount:Double) {
        
        let predicate = NSPredicate(format: "autoNumber = %@", "999")
        let retrieve = NSFetchRequest<NSFetchRequestResult>(entityName: "Original")
        retrieve.predicate = predicate
        do {
            let searchResults = try DatabaseController.getContext().fetch(retrieve)
            
            for result in searchResults as! [Original] {
                DatabaseController.getContext().delete(result)
            }
        }
        catch {
            print("Error! \(error)")
        }
        DatabaseController.saveContext()
        
        let add:Original = NSEntityDescription.insertNewObject(forEntityName: "Original", into: DatabaseController.getContext()) as! Original
        add.name = "income"
        add.amount = incomeAmount
        add.percent = 0
        add.autoNumber = "999"
        DatabaseController.saveContext()
    }
    
    // compares potential new name to old name and then calles another func to rename it in database
    public func nameChangeAddToDatabase() {
        
        var tempName:String = String()
        var old:String = String()
        
        if ((txtRnm1.alpha == 1) && (txtRnm1.text != lbl1.text))
        {
            tempName = txtRnm1.text!
            old = lbl1.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm2.alpha == 1) && (txtRnm2.text != lbl2.text))
        {
            tempName = txtRnm2.text!
            old = lbl2.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm3.alpha == 1) && (txtRnm3.text != lbl3.text))
        {
            tempName = txtRnm3.text!
            old = lbl3.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm4.alpha == 1) && (txtRnm4.text != lbl4.text))
        {
            tempName = txtRnm4.text!
            old = lbl4.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm5.alpha == 1) && (txtRnm5.text != lbl5.text))
        {
            tempName = txtRnm5.text!
            old = lbl5.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm6.alpha == 1) && (txtRnm6.text != lbl6.text))
        {
            tempName = txtRnm6.text!
            old = lbl6.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm7.alpha == 1) && (txtRnm7.text != lbl7.text))
        {
            tempName = txtRnm7.text!
            old = lbl7.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm8.alpha == 1) && (txtRnm8.text != lbl8.text))
        {
            tempName = txtRnm8.text!
            old = lbl8.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm9.alpha == 1) && (txtRnm9.text != lbl9.text))
        {
            tempName = txtRnm9.text!
            old = lbl9.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm10.alpha == 1) && (txtRnm10.text != lbl10.text))
        {
            tempName = txtRnm10.text!
            old = lbl10.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm11.alpha == 1) && (txtRnm11.text != lbl11.text))
        {
            tempName = txtRnm11.text!
            old = lbl11.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm12.alpha == 1) && (txtRnm12.text != lbl12.text))
        {
            tempName = txtRnm12.text!
            old = lbl12.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm13.alpha == 1) && (txtRnm13.text != lbl13.text))
        {
            tempName = txtRnm13.text!
            old = lbl13.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm14.alpha == 1) && (txtRnm14.text != lbl14.text))
        {
            tempName = txtRnm14.text!
            old = lbl14.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm15.alpha == 1) && (txtRnm15.text != lbl15.text))
        {
            tempName = txtRnm15.text!
            old = lbl15.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm16.alpha == 1) && (txtRnm16.text != lbl16.text))
        {
            tempName = txtRnm16.text!
            old = lbl16.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm17.alpha == 1) && (txtRnm17.text != lbl17.text))
        {
            tempName = txtRnm17.text!
            old = lbl17.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm18.alpha == 1) && (txtRnm18.text != lbl18.text))
        {
            tempName = txtRnm18.text!
            old = lbl18.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm19.alpha == 1) && (txtRnm19.text != lbl19.text))
        {
            tempName = txtRnm19.text!
            old = lbl19.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm20.alpha == 1) && (txtRnm20.text != lbl20.text))
        {
            tempName = txtRnm20.text!
            old = lbl20.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm21.alpha == 1) && (txtRnm21.text != lbl21.text))
        {
            tempName = txtRnm21.text!
            old = lbl21.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm22.alpha == 1) && (txtRnm22.text != lbl22.text))
        {
            tempName = txtRnm22.text!
            old = lbl22.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm23.alpha == 1) && (txtRnm23.text != lbl23.text))
        {
            tempName = txtRnm23.text!
            old = lbl23.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm24.alpha == 1) && (txtRnm24.text != lbl24.text))
        {
            tempName = txtRnm24.text!
            old = lbl24.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm25.alpha == 1) && (txtRnm25.text != lbl25.text))
        {
            tempName = txtRnm25.text!
            old = lbl25.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm26.alpha == 1) && (txtRnm26.text != lbl26.text))
        {
            tempName = txtRnm26.text!
            old = lbl26.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm27.alpha == 1) && (txtRnm27.text != lbl27.text))
        {
            tempName = txtRnm27.text!
            old = lbl27.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm28.alpha == 1) && (txtRnm28.text != lbl28.text))
        {
            tempName = txtRnm28.text!
            old = lbl28.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm29.alpha == 1) && (txtRnm29.text != lbl29.text))
        {
            tempName = txtRnm29.text!
            old = lbl29.text!
            rename(newName: tempName, oldName: old)
        }
        if ((txtRnm30.alpha == 1) && (txtRnm30.text != lbl30.text))
        {
            tempName = txtRnm30.text!
            old = lbl30.text!
            rename(newName: tempName, oldName: old)
        }
    }
    
    // fetches current data from old field name, stores values in vars, deletes it from database and adds new values to database
    public func rename(newName: String, oldName: String) {
        
        var name:String = String()
        var amount:Double = 0
        var percent:Double = 0
        var autoNumber:String = String()
        
        let predicate = NSPredicate(format: "name = %@", oldName)
        let retrieve = NSFetchRequest<NSFetchRequestResult>(entityName: "Original")
        retrieve.predicate = predicate
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(retrieve)
            
            for result in searchResults as! [Original] {
                amount = result.amount
                percent = result.percent
                autoNumber = result.autoNumber!
                name = newName
                DatabaseController.getContext().delete(result)
            }
        }
        catch {
            print("Error! \(error)")
        }
        DatabaseController.saveContext()
        
        let add:Original = NSEntityDescription.insertNewObject(forEntityName: "Original", into: DatabaseController.getContext()) as! Original
        add.name = name
        add.amount = amount
        add.percent = percent
        add.autoNumber = autoNumber
        DatabaseController.saveContext()
    }
    
    // tests app if it's been used before
    public func firstRun() -> Bool {
        
        let retrieve = NSFetchRequest<NSFetchRequestResult>(entityName: "Original")
        do {
            let searchResults = try DatabaseController.getContext().fetch(retrieve)
            if (searchResults.count > 0) {return false}
            else {return true}
        }
        catch {
            print("Error! \(error)")
        }
        return true
    }
    
    // global vars
    struct global {
        static var percent:Double = 0
        static var amount:Double = 0
        static var name:String = String()
        static var autoNumber:String = String()
        static var totalNumberOfData:Int = 0
        static var totalAmountFetched:Double = 0
        static var totalPercentFetched:Double = 0
    }
    
    public func deleteLastFieldCreated(autoNumber: String) {
        
        let predicate = NSPredicate(format: "autoNumber = %@", autoNumber)
        let retrieve = NSFetchRequest<NSFetchRequestResult>(entityName: "Original")
        retrieve.predicate = predicate
        do {
            let searchResults = try DatabaseController.getContext().fetch(retrieve)
            
            for result in searchResults as! [Original] {
                newAmountForTextFields(autoNumber: autoNumber, amount: 0.0)
                DatabaseController.getContext().delete(result)
            }
        }
        catch {
            print("Error! \(error)")
        }
        DatabaseController.saveContext()
    }
    
    public func textDelegates() {
        txtTotal.delegate = self
        txtFirst.delegate = self
        txtSecond.delegate = self
        txtThird.delegate = self
        txtFourth.delegate = self
        txtFifth.delegate = self
        txtSixth.delegate = self
        txtSeventh.delegate = self
        txtEighth.delegate = self
        txtNineth.delegate = self
        txtTenth.delegate = self
        txtEleventh.delegate = self
        txtTwelfth.delegate = self
        txtThirteenth.delegate = self
        txtFourteenth.delegate = self
        txtFifteenth.delegate = self
        txtSixteenth.delegate = self
        txtSeventeenth.delegate = self
        txtEighteenth.delegate = self
        txtNineteenth.delegate = self
        txtTwentieth.delegate = self
        txtTwentyFirst.delegate = self
        txtTwentySecond.delegate = self
        txtTwentyThird.delegate = self
        txtTwentyFourth.delegate = self
        txtTwentyFifth.delegate = self
        txtTwentySixth.delegate = self
        txtTwentySeventh.delegate = self
        txtTwentyEighth.delegate = self
        txtTwentyNineth.delegate = self
        txtThirtieth.delegate = self
        
        txtRnm1.delegate = self
        txtRnm2.delegate = self
        txtRnm3.delegate = self
        txtRnm4.delegate = self
        txtRnm5.delegate = self
        txtRnm6.delegate = self
        txtRnm7.delegate = self
        txtRnm8.delegate = self
        txtRnm9.delegate = self
        txtRnm10.delegate = self
        txtRnm11.delegate = self
        txtRnm12.delegate = self
        txtRnm13.delegate = self
        txtRnm14.delegate = self
        txtRnm15.delegate = self
        txtRnm16.delegate = self
        txtRnm17.delegate = self
        txtRnm18.delegate = self
        txtRnm19.delegate = self
        txtRnm20.delegate = self
        txtRnm21.delegate = self
        txtRnm22.delegate = self
        txtRnm23.delegate = self
        txtRnm24.delegate = self
        txtRnm25.delegate = self
        txtRnm26.delegate = self
        txtRnm27.delegate = self
        txtRnm28.delegate = self
        txtRnm29.delegate = self
        txtRnm30.delegate = self
        txtFN.delegate = self
    }
    
    public func alphaOne(on: Bool) {
        switch on {
        case true:
            lblNFE.alpha = 1.0
            lblFN.alpha = 1.0
            txtFN.alpha = 1.0
            SubmitButOutlet.alpha = 1.0
            cancelButOutlet.alpha = 1.0
            doneRenamingOutlet.alpha = 0
            addFieldOutlet.alpha = 0
            removeFieldOutlet.alpha = 0
            renameFieldsOutlet.alpha = 0
            segmentSelectorOutlet.alpha = 0
            SegPercOutlet.alpha = 0
            SegUnitsOutlet.alpha = 0
            lblAvalableText.alpha = 0
            lblMyIncomeText.alpha = 0
            lblTotal.alpha = 0
            txtTotal.alpha = 0
            lblAvailableBal.alpha = 0
            lblAvBalText.alpha = 0
        case false:
            lblNFE.alpha = 0.0
            lblFN.alpha = 0.0
            txtFN.alpha = 0.0
            SubmitButOutlet.alpha = 0.0
            cancelButOutlet.alpha = 0.0
            doneRenamingOutlet.alpha = 0.0
            addFieldOutlet.alpha = 1.0
            removeFieldOutlet.alpha = 1.0
            renameFieldsOutlet.alpha = 1.0
            segmentSelectorOutlet.alpha = 1.0
            SegPercOutlet.alpha = 1.0
            SegUnitsOutlet.alpha = 1.0
            lblAvalableText.alpha = 1.0
            lblMyIncomeText.alpha = 1.0
            lblTotal.alpha = 1.0
            txtTotal.alpha = 1.0
            lblAvailableBal.alpha = 1.0
            lblAvBalText.alpha = 1.0
        }
    }
    
    public func alphaTwo(on: Bool) {
        switch on {
        case true:
            doneRenamingOutlet.alpha = 1.0
            addFieldOutlet.alpha = 0
            removeFieldOutlet.alpha = 0
            renameFieldsOutlet.alpha = 0
            segmentSelectorOutlet.alpha = 0
        case false:
            doneRenamingOutlet.alpha = 0.0
            addFieldOutlet.alpha = 1.0
            removeFieldOutlet.alpha = 1.0
            renameFieldsOutlet.alpha = 1.0
            segmentSelectorOutlet.alpha = 1.0
        }
    }
    
    func moveBlankLabel(direction: String, sizeConstraint:Int)
    {
        var min:Int = 0
        var max:Int = 0
        var amount:Int = 0
        
        switch sizeConstraint {
        case ..<50:
            min = 12
            max = 1146
            amount = 42
        default:
            min = 12
            max = 1956
            amount = 72
        }
        
        if (Gvars.blanklabelHeight >= min && direction == "Up")
        {
            Gvars.blanklabelHeight = Gvars.blanklabelHeight - amount
            blankLabelTopConstraint.constant = CGFloat(Gvars.blanklabelHeight)
        }
        else if (Gvars.blanklabelHeight < max && direction == "Down")
        {
            Gvars.blanklabelHeight = Gvars.blanklabelHeight + amount
            blankLabelTopConstraint.constant = CGFloat(Gvars.blanklabelHeight)
        }
        else
        {
            // mistake somewhere
            print("direction error or limit reached")
        }
    }
    
    func showFields(field: Int)
    {
        var i:Int = 1
        let limit = field + 1
        while (i < limit) {
            switch (mod % 2) {
            case 1:
                switch i {
                case 1: txtFirst.alpha = 1.0
                lbl1.alpha = 1.0
                case 2: txtSecond.alpha = 1.0
                lbl2.alpha = 1.0
                case 3: txtThird.alpha = 1.0
                lbl3.alpha = 1.0
                case 4: txtFourth.alpha = 1.0
                lbl4.alpha = 1.0
                case 5: txtFifth.alpha = 1.0
                lbl5.alpha = 1.0
                case 6: txtSixth.alpha = 1.0
                lbl6.alpha = 1.0
                case 7: txtSeventh.alpha = 1.0
                lbl7.alpha = 1.0
                case 8: txtEighth.alpha = 1.0
                lbl8.alpha = 1.0
                case 9: txtNineth.alpha = 1.0
                lbl9.alpha = 1.0
                case 10: txtTenth.alpha = 1.0
                lbl10.alpha = 1.0
                case 11: txtEleventh.alpha = 1.0
                lbl11.alpha = 1.0
                case 12: txtTwelfth.alpha = 1.0
                lbl12.alpha = 1.0
                case 13: txtThirteenth.alpha = 1.0
                lbl13.alpha = 1.0
                case 14: txtFourteenth.alpha = 1.0
                lbl14.alpha = 1.0
                case 15: txtFifteenth.alpha = 1.0
                lbl15.alpha = 1.0
                case 16: txtSixteenth.alpha = 1.0
                lbl16.alpha = 1.0
                case 17: txtSeventeenth.alpha = 1.0
                lbl17.alpha = 1.0
                case 18: txtEighteenth.alpha = 1.0
                lbl18.alpha = 1.0
                case 19: txtNineteenth.alpha = 1.0
                lbl19.alpha = 1.0
                case 20: txtTwentieth.alpha = 1.0
                lbl20.alpha = 1.0
                case 21: txtTwentyFirst.alpha = 1.0
                lbl21.alpha = 1.0
                case 22: txtTwentySecond.alpha = 1.0
                lbl22.alpha = 1.0
                case 23: txtTwentyThird.alpha = 1.0
                lbl23.alpha = 1.0
                case 24: txtTwentyFourth.alpha = 1.0
                lbl24.alpha = 1.0
                case 25: txtTwentyFifth.alpha = 1.0
                lbl25.alpha = 1.0
                case 26: txtTwentySixth.alpha = 1.0
                lbl26.alpha = 1.0
                case 27: txtTwentySeventh.alpha = 1.0
                lbl27.alpha = 1.0
                case 28: txtTwentyEighth.alpha = 1.0
                lbl28.alpha = 1.0
                case 29: txtTwentyNineth.alpha = 1.0
                lbl29.alpha = 1.0
                case 30: txtThirtieth.alpha = 1.0
                lbl30.alpha = 1.0
                default: print("error")
                }
            default:
                switch i {
                case 1: lbl1.alpha = 1.0
                lblFirst.alpha = 1.0
                firstPlusOutlet.alpha = 1.0
                firstMinusOutlet.alpha = 1.0
                case 2: lbl1.alpha = 1.0
                lblSecond.alpha = 1.0
                secondPlusOutlet.alpha = 1.0
                secondMinusOutlet.alpha = 1.0
                case 3: lbl3.alpha = 1.0
                lblThird.alpha = 1.0
                thirdPlusOutlet.alpha = 1.0
                thirdMinusOutlet.alpha = 1.0
                case 4: lbl4.alpha = 1.0
                lblFourth.alpha = 1.0
                FourthPlusOutlet.alpha = 1.0
                FourthMinusOutlet.alpha = 1.0
                lbl4.alpha = 1.0
                case 5: lbl5.alpha = 1.0
                lblFifth.alpha = 1.0
                FifthPlusOutlet.alpha = 1.0
                FifthMinusOutlet.alpha = 1.0
                lbl5.alpha = 1.0
                case 6: lbl6.alpha = 1.0
                lblSixth.alpha = 1.0
                SixthPlusOutlet.alpha = 1.0
                SixthMinusOutlet.alpha = 1.0
                lbl6.alpha = 1.0
                case 7: lbl7.alpha = 1.0
                lblSeventh.alpha = 1.0
                SeventhPlusOutlet.alpha = 1.0
                SeventhMinusOutlet.alpha = 1.0
                lbl7.alpha = 1.0
                case 8: lbl8.alpha = 1.0
                lblEighth.alpha = 1.0
                EighthPlusOutlet.alpha = 1.0
                EighthMinusOutlet.alpha = 1.0
                lbl8.alpha = 1.0
                case 9: lbl9.alpha = 1.0
                lblNineth.alpha = 1.0
                NinethPlusOutlet.alpha = 1.0
                NinethMinusOutlet.alpha = 1.0
                lbl9.alpha = 1.0
                case 10: lbl10.alpha = 1.0
                lblTenth.alpha = 1.0
                TenthPlusOutlet.alpha = 1.0
                TenthMinusOutlet.alpha = 1.0
                lbl10.alpha = 1.0
                case 11: lbl11.alpha = 1.0
                lblEleventh.alpha = 1.0
                EleventhPlusOutlet.alpha = 1.0
                EleventhMinusOutlet.alpha = 1.0
                lbl11.alpha = 1.0
                case 12: lbl12.alpha = 1.0
                lblTwelfth.alpha = 1.0
                TwelfthPlusOutlet.alpha = 1.0
                TwelfthMinusOutlet.alpha = 1.0
                lbl12.alpha = 1.0
                case 13: lbl13.alpha = 1.0
                lblThirteenth.alpha = 1.0
                ThirteenthPlusOutlet.alpha = 1.0
                ThirteenthMinusOutlet.alpha = 1.0
                lbl13.alpha = 1.0
                case 14: lbl14.alpha = 1.0
                lblFourteenth.alpha = 1.0
                FourteenthPlusOutlet.alpha = 1.0
                FourteenthMinusOutlet.alpha = 1.0
                lbl14.alpha = 1.0
                case 15: lbl15.alpha = 1.0
                lblFifteenth.alpha = 1.0
                FifteenthPlusOutlet.alpha = 1.0
                FifteenthMinusOutlet.alpha = 1.0
                lbl15.alpha = 1.0
                case 16: lbl16.alpha = 1.0
                lblSixteenth.alpha = 1.0
                SixteenthPlusOutlet.alpha = 1.0
                SixteenthMinusOutlet.alpha = 1.0
                lbl16.alpha = 1.0
                case 17: lbl17.alpha = 1.0
                lblSeventeenth.alpha = 1.0
                SeventeenthPlusOutlet.alpha = 1.0
                SeventeenthMinusOutlet.alpha = 1.0
                lbl17.alpha = 1.0
                case 18: lbl18.alpha = 1.0
                lblEighteenth.alpha = 1.0
                EighteenthPlusOutlet.alpha = 1.0
                EighteenthMinusOutlet.alpha = 1.0
                lbl18.alpha = 1.0
                case 19: lbl19.alpha = 1.0
                lblNineteenth.alpha = 1.0
                NineteenthPlusOutlet.alpha = 1.0
                NineteenthMinusOutlet.alpha = 1.0
                lbl19.alpha = 1.0
                case 20: lbl20.alpha = 1.0
                lblTwentieth.alpha = 1.0
                TwentiethPlusOutlet.alpha = 1.0
                TwentiethMinusOutlet.alpha = 1.0
                lbl20.alpha = 1.0
                case 21: lbl21.alpha = 1.0
                lblTwentyFirst.alpha = 1.0
                TwentyFirstPlusOutlet.alpha = 1.0
                TwentyFirstMinusOutlet.alpha = 1.0
                lbl21.alpha = 1.0
                case 22: lbl22.alpha = 1.0
                lblTwentySecond.alpha = 1.0
                TwentySecondPlusOutlet.alpha = 1.0
                TwentySecondMinusOutlet.alpha = 1.0
                lbl22.alpha = 1.0
                case 23: lbl23.alpha = 1.0
                lblTwentyThird.alpha = 1.0
                TwentyThirdPlusOutlet.alpha = 1.0
                TwentyThirdMinusOutlet.alpha = 1.0
                lbl23.alpha = 1.0
                case 24: lbl24.alpha = 1.0
                lblTwentyFourth.alpha = 1.0
                TwentyFourthPlusOutlet.alpha = 1.0
                TwentyFourthMinusOutlet.alpha = 1.0
                lbl24.alpha = 1.0
                case 25: lbl25.alpha = 1.0
                lblTwentyFifth.alpha = 1.0
                TwentyFifthPlusOutlet.alpha = 1.0
                TwentyFifthMinusOutlet.alpha = 1.0
                lbl25.alpha = 1.0
                case 26: lbl26.alpha = 1.0
                lblTwentySixth.alpha = 1.0
                TwentySixthPlusOutlet.alpha = 1.0
                TwentySixthMinusOutlet.alpha = 1.0
                lbl26.alpha = 1.0
                case 27: lbl27.alpha = 1.0
                lblTwentySeventh.alpha = 1.0
                TwentySeventhPlusOutlet.alpha = 1.0
                TwentySeventhMinusOutlet.alpha = 1.0
                lbl27.alpha = 1.0
                case 28: lbl28.alpha = 1.0
                lblTwentyEighth.alpha = 1.0
                TwentyEighthPlusOutlet.alpha = 1.0
                TwentyEighthMinusOutlet.alpha = 1.0
                lbl28.alpha = 1.0
                case 29: lbl29.alpha = 1.0
                lblTwentyNineth.alpha = 1.0
                TwentyNinethPlusOutlet.alpha = 1.0
                TwentyNinethMinusOutlet.alpha = 1.0
                lbl29.alpha = 1.0
                case 30: lbl30.alpha = 1.0
                lblThirtieth.alpha = 1.0
                ThirtiethPlusOutlet.alpha = 1.0
                ThirtiethMinusOutlet.alpha = 1.0
                lbl30.alpha = 1.0
                default: print("error")
                }
            }
            i += 1
        }
    }
    
    func hideRequiredFields(numOfFields: Int, side: String, justLastField: Bool)
    {
        var i:Int = numOfFields
        var limit:Int = 31
        if (justLastField) { limit = (i + 1) }
        
        switch side {
        case "left_labels":
            while (i < limit) {
                switch i {
                case 1: lbl1.alpha = 0.0
                case 2: lbl2.alpha = 0.0
                case 3: lbl3.alpha = 0.0
                case 4: lbl4.alpha = 0.0
                case 5: lbl5.alpha = 0.0
                case 6: lbl6.alpha = 0.0
                case 7: lbl7.alpha = 0.0
                case 8: lbl8.alpha = 0.0
                case 9: lbl9.alpha = 0.0
                case 10: lbl10.alpha = 0.0
                case 11: lbl11.alpha = 0.0
                case 12: lbl12.alpha = 0.0
                case 13: lbl13.alpha = 0.0
                case 14: lbl14.alpha = 0.0
                case 15: lbl15.alpha = 0.0
                case 16: lbl16.alpha = 0.0
                case 17: lbl17.alpha = 0.0
                case 18: lbl18.alpha = 0.0
                case 19: lbl19.alpha = 0.0
                case 20: lbl20.alpha = 0.0
                case 21: lbl21.alpha = 0.0
                case 22: lbl22.alpha = 0.0
                case 23: lbl23.alpha = 0.0
                case 24: lbl24.alpha = 0.0
                case 25: lbl25.alpha = 0.0
                case 26: lbl26.alpha = 0.0
                case 27: lbl27.alpha = 0.0
                case 28: lbl28.alpha = 0.0
                case 29: lbl29.alpha = 0.0
                case 30: lbl30.alpha = 0.0
                default: print("end")
                }
                i += 1
            }
        case "right_textfields":
            while (i < limit) {
                switch i {
                case 1: txtFirst.alpha = 0.0
                case 2: txtSecond.alpha = 0.0
                case 3: txtThird.alpha = 0.0
                case 4: txtFourth.alpha = 0.0
                case 5: txtFifth.alpha = 0.0
                case 6: txtSixth.alpha = 0.0
                case 7: txtSeventh.alpha = 0.0
                case 8: txtEighth.alpha = 0.0
                case 9: txtNineth.alpha = 0.0
                case 10: txtTenth.alpha = 0.0
                case 11: txtEleventh.alpha = 0.0
                case 12: txtTwelfth.alpha = 0.0
                case 13: txtThirteenth.alpha = 0.0
                case 14: txtFourteenth.alpha = 0.0
                case 15: txtFifteenth.alpha = 0.0
                case 16: txtSixteenth.alpha = 0.0
                case 17: txtSeventeenth.alpha = 0.0
                case 18: txtEighteenth.alpha = 0.0
                case 19: txtNineteenth.alpha = 0.0
                case 20: txtTwentieth.alpha = 0.0
                case 21: txtTwentyFirst.alpha = 0.0
                case 22: txtTwentySecond.alpha = 0.0
                case 23: txtTwentyThird.alpha = 0.0
                case 24: txtTwentyFourth.alpha = 0.0
                case 25: txtTwentyFifth.alpha = 0.0
                case 26: txtTwentySixth.alpha = 0.0
                case 27: txtTwentySeventh.alpha = 0.0
                case 28: txtTwentyEighth.alpha = 0.0
                case 29: txtTwentyNineth.alpha = 0.0
                case 30: txtThirtieth.alpha = 0.0
                default: print("end")
                }
                i += 1
            }
        case "right_buttons":
            while (i < limit) {
                switch i {
                case 1: lblFirst.alpha = 0.0
                firstPlusOutlet.alpha = 0.0
                firstMinusOutlet.alpha = 0.0
                case 2: lblSecond.alpha = 0.0
                secondPlusOutlet.alpha = 0.0
                secondMinusOutlet.alpha = 0.0
                case 3: lblThird.alpha = 0.0
                thirdPlusOutlet.alpha = 0.0
                thirdMinusOutlet.alpha = 0.0
                case 4: lblFourth.alpha = 0.0
                FourthPlusOutlet.alpha = 0.0
                FourthMinusOutlet.alpha = 0.0
                case 5: lblFifth.alpha = 0.0
                FifthPlusOutlet.alpha = 0.0
                FifthMinusOutlet.alpha = 0.0
                case 6: lblSixth.alpha = 0.0
                SixthPlusOutlet.alpha = 0.0
                SixthMinusOutlet.alpha = 0.0
                case 7: lblSeventh.alpha = 0.0
                SeventhPlusOutlet.alpha = 0.0
                SeventhMinusOutlet.alpha = 0.0
                case 8: lblEighth.alpha = 0.0
                EighthPlusOutlet.alpha = 0.0
                EighthMinusOutlet.alpha = 0.0
                case 9: lblNineth.alpha = 0.0
                NinethPlusOutlet.alpha = 0.0
                NinethMinusOutlet.alpha = 0.0
                case 10: lblTenth.alpha = 0.0
                TenthPlusOutlet.alpha = 0.0
                TenthMinusOutlet.alpha = 0.0
                case 11: lblEleventh.alpha = 0.0
                EleventhPlusOutlet.alpha = 0.0
                EleventhMinusOutlet.alpha = 0.0
                case 12: lblTwelfth.alpha = 0.0
                TwelfthPlusOutlet.alpha = 0.0
                TwelfthMinusOutlet.alpha = 0.0
                case 13: lblThirteenth.alpha = 0.0
                ThirteenthPlusOutlet.alpha = 0.0
                ThirteenthMinusOutlet.alpha = 0.0
                case 14: lblFourteenth.alpha = 0.0
                FourteenthPlusOutlet.alpha = 0.0
                FourteenthMinusOutlet.alpha = 0.0
                case 15: lblFifteenth.alpha = 0.0
                FifteenthPlusOutlet.alpha = 0.0
                FifteenthMinusOutlet.alpha = 0.0
                case 16: lblSixteenth.alpha = 0.0
                SixteenthPlusOutlet.alpha = 0.0
                SixteenthMinusOutlet.alpha = 0.0
                case 17: lblSeventeenth.alpha = 0.0
                SeventeenthPlusOutlet.alpha = 0.0
                SeventeenthMinusOutlet.alpha = 0.0
                case 18: lblEighteenth.alpha = 0.0
                EighteenthPlusOutlet.alpha = 0.0
                EighteenthMinusOutlet.alpha = 0.0
                case 19: lblNineteenth.alpha = 0.0
                NineteenthPlusOutlet.alpha = 0.0
                NineteenthMinusOutlet.alpha = 0.0
                case 20: lblTwentieth.alpha = 0.0
                TwentiethPlusOutlet.alpha = 0.0
                TwentiethMinusOutlet.alpha = 0.0
                case 21: lblTwentyFirst.alpha = 0.0
                TwentyFirstPlusOutlet.alpha = 0.0
                TwentyFirstMinusOutlet.alpha = 0.0
                case 22: lblTwentySecond.alpha = 0.0
                TwentySecondPlusOutlet.alpha = 0.0
                TwentySecondMinusOutlet.alpha = 0.0
                case 23: lblTwentyThird.alpha = 0.0
                TwentyThirdPlusOutlet.alpha = 0.0
                TwentyThirdMinusOutlet.alpha = 0.0
                case 24: lblTwentyFourth.alpha = 0.0
                TwentyFourthPlusOutlet.alpha = 0.0
                TwentyFourthMinusOutlet.alpha = 0.0
                case 25: lblTwentyFifth.alpha = 0.0
                TwentyFifthPlusOutlet.alpha = 0.0
                TwentyFifthMinusOutlet.alpha = 0.0
                case 26: lblTwentySixth.alpha = 0.0
                TwentySixthPlusOutlet.alpha = 0.0
                TwentySixthMinusOutlet.alpha = 0.0
                case 27: lblTwentySeventh.alpha = 0.0
                TwentySeventhPlusOutlet.alpha = 0.0
                TwentySeventhMinusOutlet.alpha = 0.0
                case 28: lblTwentyEighth.alpha = 0.0
                TwentyEighthPlusOutlet.alpha = 0.0
                TwentyEighthMinusOutlet.alpha = 0.0
                case 29: lblTwentyNineth.alpha = 0.0
                TwentyNinethPlusOutlet.alpha = 0.0
                TwentyNinethMinusOutlet.alpha = 0.0
                case 30: lblThirtieth.alpha = 0.0
                ThirtiethPlusOutlet.alpha = 0.0
                ThirtiethMinusOutlet.alpha = 0.0
                default: print("end")
                }
                i += 1
            }
        default:
            print("error")
        }
    }
    
    func addNewFieldtoArray(Name: String)
    {
        FirstViewController.stR.fields.append(Name)
        FirstViewController.stR.amounts.append("0.0")
        FirstViewController.stR.percentages.append("0.0")
        FirstViewController.stR.totals.append("0.0")
    }
    
    func removeLastFieldFromArray(lastName:String)
    {
        let limit = FirstViewController.stR.fields.count
        
        var i:Int = 0
        while (i < limit)
        {
            if (FirstViewController.stR.fields[i] == lastName)
            {
                FirstViewController.stR.fields.remove(at: i)
                FirstViewController.stR.amounts.remove(at: i)
                FirstViewController.stR.percentages.remove(at: i)
                FirstViewController.stR.totals.remove(at: i)
            }
            i += 1
        }
    }
    
    public func calcLastName() -> String {
        
        var maxAutoNum:Int = 0
        var answer:String = String()
        
        let retrieve = NSFetchRequest<NSFetchRequestResult>(entityName: "Original")
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(retrieve)
            
            for result in searchResults as! [Original] {
                
                if ((Int(result.autoNumber!)! > maxAutoNum) && (Int(result.autoNumber!)! < 999))
                {
                    maxAutoNum = Int(result.autoNumber!)!
                    answer = result.name!
                }
            }
        }
        catch {
            print("Error! \(error)")
        }
        
        return answer
    }
    
    // hides rename textfields
    func endRenaming()
    {
        txtRnm1.alpha = 0.0
        txtRnm2.alpha = 0.0
        txtRnm3.alpha = 0.0
        txtRnm4.alpha = 0.0
        txtRnm5.alpha = 0.0
        txtRnm6.alpha = 0.0
        txtRnm7.alpha = 0.0
        txtRnm8.alpha = 0.0
        txtRnm9.alpha = 0.0
        txtRnm10.alpha = 0.0
        txtRnm11.alpha = 0.0
        txtRnm12.alpha = 0.0
        txtRnm13.alpha = 0.0
        txtRnm14.alpha = 0.0
        txtRnm15.alpha = 0.0
        txtRnm16.alpha = 0.0
        txtRnm17.alpha = 0.0
        txtRnm18.alpha = 0.0
        txtRnm19.alpha = 0.0
        txtRnm20.alpha = 0.0
        txtRnm21.alpha = 0.0
        txtRnm22.alpha = 0.0
        txtRnm23.alpha = 0.0
        txtRnm24.alpha = 0.0
        txtRnm25.alpha = 0.0
        txtRnm26.alpha = 0.0
        txtRnm27.alpha = 0.0
        txtRnm28.alpha = 0.0
        txtRnm29.alpha = 0.0
        txtRnm30.alpha = 0.0
    }
    
    func startRenaming()
    {
        let num:Int = calcNumOfDataOriginal()
        
        txtRnm1.alpha = 1.0
        txtRnm2.alpha = 1.0
        txtRnm3.alpha = 1.0
        
        var i:Int = num
        let limit:Int = 3
        
        while (i > limit)
        {
            switch i {
            case 4: txtRnm4.alpha = 1
            case 5: txtRnm5.alpha = 1
            case 6: txtRnm6.alpha = 1
            case 7: txtRnm7.alpha = 1
            case 8: txtRnm8.alpha = 1
            case 9: txtRnm9.alpha = 1
            case 10: txtRnm10.alpha = 1
            case 11: txtRnm11.alpha = 1
            case 12: txtRnm12.alpha = 1
            case 13: txtRnm13.alpha = 1
            case 14: txtRnm14.alpha = 1
            case 15: txtRnm15.alpha = 1
            case 16: txtRnm16.alpha = 1
            case 17: txtRnm17.alpha = 1
            case 18: txtRnm18.alpha = 1
            case 19: txtRnm19.alpha = 1
            case 20: txtRnm20.alpha = 1
            case 21: txtRnm21.alpha = 1
            case 22: txtRnm22.alpha = 1
            case 23: txtRnm23.alpha = 1
            case 24: txtRnm24.alpha = 1
            case 25: txtRnm25.alpha = 1
            case 26: txtRnm26.alpha = 1
            case 27: txtRnm27.alpha = 1
            case 28: txtRnm28.alpha = 1
            case 29: txtRnm29.alpha = 1
            case 30: txtRnm30.alpha = 1
            default: print("error")
            }
            i -= 1
        }
        hideRequiredFields(numOfFields: 1, side: "right_buttons", justLastField: false)
        hideRequiredFields(numOfFields: num, side: "left_labels", justLastField: false)
        hideRequiredFields(numOfFields: 1, side: "right_textfields", justLastField: false)
    }
    
    public func amountOrPercentChangeInArray(name:String) {
        
        var i:Int = 0
        let limit = calcNumOfDataOriginal()
        
        while (i < limit)
        {
            if (FirstViewController.stR.fields[i] == name)
            {
                let newAmount:Double = global.amount - Double(FirstViewController.stR.totals[i])!
                FirstViewController.stR.amounts[i] = String(Double(round(100*Double(newAmount))/100))
                FirstViewController.stR.percentages[i] = String(Double(round(100*Double(global.percent))/100))
            }
            i += 1
        }
    }
    
    public func nameChangeToArray() {
        
        var i:Int = calcNumOfDataOriginal()
        let limit:Int = 0
        
        while (i > limit) {
            switch i {
            case 1: newNameInArray(old: lbl1.text!, new: txtRnm1.text!)
            case 2: newNameInArray(old: lbl2.text!, new: txtRnm2.text!)
            case 3: newNameInArray(old: lbl3.text!, new: txtRnm3.text!)
            case 4: newNameInArray(old: lbl4.text!, new: txtRnm4.text!)
            case 5: newNameInArray(old: lbl5.text!, new: txtRnm5.text!)
            case 6: newNameInArray(old: lbl6.text!, new: txtRnm6.text!)
            case 7: newNameInArray(old: lbl7.text!, new: txtRnm7.text!)
            case 8: newNameInArray(old: lbl8.text!, new: txtRnm8.text!)
            case 9: newNameInArray(old: lbl9.text!, new: txtRnm9.text!)
            case 10: newNameInArray(old: lbl10.text!, new: txtRnm10.text!)
            case 11: newNameInArray(old: lbl11.text!, new: txtRnm11.text!)
            case 12: newNameInArray(old: lbl12.text!, new: txtRnm12.text!)
            case 13: newNameInArray(old: lbl13.text!, new: txtRnm13.text!)
            case 14: newNameInArray(old: lbl14.text!, new: txtRnm14.text!)
            case 15: newNameInArray(old: lbl15.text!, new: txtRnm15.text!)
            case 16: newNameInArray(old: lbl16.text!, new: txtRnm16.text!)
            case 17: newNameInArray(old: lbl17.text!, new: txtRnm17.text!)
            case 18: newNameInArray(old: lbl18.text!, new: txtRnm18.text!)
            case 19: newNameInArray(old: lbl19.text!, new: txtRnm19.text!)
            case 20: newNameInArray(old: lbl20.text!, new: txtRnm20.text!)
            case 21: newNameInArray(old: lbl21.text!, new: txtRnm21.text!)
            case 22: newNameInArray(old: lbl22.text!, new: txtRnm22.text!)
            case 23: newNameInArray(old: lbl23.text!, new: txtRnm23.text!)
            case 24: newNameInArray(old: lbl24.text!, new: txtRnm24.text!)
            case 25: newNameInArray(old: lbl25.text!, new: txtRnm25.text!)
            case 26: newNameInArray(old: lbl26.text!, new: txtRnm26.text!)
            case 27: newNameInArray(old: lbl27.text!, new: txtRnm27.text!)
            case 28: newNameInArray(old: lbl28.text!, new: txtRnm28.text!)
            case 29: newNameInArray(old: lbl29.text!, new: txtRnm29.text!)
            case 30: newNameInArray(old: lbl30.text!, new: txtRnm30.text!)
            default: print("end")
            }
            i -= 1
        }
    }
    
    public func newNameInArray(old:String, new:String) {
        var i:Int = 0
        let limit = calcNumOfDataOriginal()
        
        if (new != "" && new != old)
        {
            while (i < limit)
            {
                if (FirstViewController.stR.fields[i] == old)
                {
                    FirstViewController.stR.fields[i] = new
                }
                i += 1
            }
        }
    }
    
    public func initialRenameSet() {
        
        if (lbl1.alpha == 1) { txtRnm1.text = lbl1.text }
        if (lbl2.alpha == 1) { txtRnm2.text = lbl2.text }
        if (lbl3.alpha == 1) { txtRnm3.text = lbl3.text }
        if (lbl4.alpha == 1) { txtRnm4.text = lbl4.text }
        if (lbl5.alpha == 1) { txtRnm5.text = lbl5.text }
        if (lbl6.alpha == 1) { txtRnm6.text = lbl6.text }
        if (lbl7.alpha == 1) { txtRnm7.text = lbl7.text }
        if (lbl8.alpha == 1) { txtRnm8.text = lbl8.text }
        if (lbl9.alpha == 1) { txtRnm9.text = lbl9.text }
        if (lbl10.alpha == 1) { txtRnm10.text = lbl10.text }
        if (lbl11.alpha == 1) { txtRnm11.text = lbl11.text }
        if (lbl12.alpha == 1) { txtRnm12.text = lbl12.text }
        if (lbl13.alpha == 1) { txtRnm13.text = lbl13.text }
        if (lbl14.alpha == 1) { txtRnm14.text = lbl14.text }
        if (lbl15.alpha == 1) { txtRnm15.text = lbl15.text }
        if (lbl16.alpha == 1) { txtRnm16.text = lbl16.text }
        if (lbl17.alpha == 1) { txtRnm17.text = lbl17.text }
        if (lbl18.alpha == 1) { txtRnm18.text = lbl18.text }
        if (lbl19.alpha == 1) { txtRnm19.text = lbl19.text }
        if (lbl20.alpha == 1) { txtRnm20.text = lbl20.text }
        if (lbl21.alpha == 1) { txtRnm21.text = lbl21.text }
        if (lbl22.alpha == 1) { txtRnm22.text = lbl22.text }
        if (lbl23.alpha == 1) { txtRnm23.text = lbl23.text }
        if (lbl24.alpha == 1) { txtRnm24.text = lbl24.text }
        if (lbl25.alpha == 1) { txtRnm25.text = lbl25.text }
        if (lbl26.alpha == 1) { txtRnm26.text = lbl26.text }
        if (lbl27.alpha == 1) { txtRnm27.text = lbl27.text }
        if (lbl28.alpha == 1) { txtRnm28.text = lbl28.text }
        if (lbl29.alpha == 1) { txtRnm29.text = lbl29.text }
        if (lbl30.alpha == 1) { txtRnm30.text = lbl30.text }
    }
    
    public func adjustFontSizesToFitTheWidths() {
        lbl1.adjustsFontSizeToFitWidth = true
        lbl2.adjustsFontSizeToFitWidth = true
        lbl3.adjustsFontSizeToFitWidth = true
        lbl4.adjustsFontSizeToFitWidth = true
        lbl5.adjustsFontSizeToFitWidth = true
        lbl6.adjustsFontSizeToFitWidth = true
        lbl7.adjustsFontSizeToFitWidth = true
        lbl8.adjustsFontSizeToFitWidth = true
        lbl9.adjustsFontSizeToFitWidth = true
        lbl10.adjustsFontSizeToFitWidth = true
        lbl11.adjustsFontSizeToFitWidth = true
        lbl12.adjustsFontSizeToFitWidth = true
        lbl13.adjustsFontSizeToFitWidth = true
        lbl14.adjustsFontSizeToFitWidth = true
        lbl15.adjustsFontSizeToFitWidth = true
        lbl16.adjustsFontSizeToFitWidth = true
        lbl17.adjustsFontSizeToFitWidth = true
        lbl18.adjustsFontSizeToFitWidth = true
        lbl19.adjustsFontSizeToFitWidth = true
        lbl20.adjustsFontSizeToFitWidth = true
        lbl21.adjustsFontSizeToFitWidth = true
        lbl22.adjustsFontSizeToFitWidth = true
        lbl23.adjustsFontSizeToFitWidth = true
        lbl24.adjustsFontSizeToFitWidth = true
        lbl25.adjustsFontSizeToFitWidth = true
        lbl26.adjustsFontSizeToFitWidth = true
        lbl27.adjustsFontSizeToFitWidth = true
        lbl28.adjustsFontSizeToFitWidth = true
        lbl29.adjustsFontSizeToFitWidth = true
        lbl30.adjustsFontSizeToFitWidth = true
    }
    
    public func disallowSameName(name: String) -> Bool {
        
        let limit:Int = FirstViewController.stR.fields.count
        var i:Int = 0
        
        while (i < limit)
        {
            if (name == FirstViewController.stR.fields[i])
            {
                print("Disallowed!!")
                createAlert(title: "Naming Error", message: "This name already exists in your list. Every name should be different from the other")
                txtFN.becomeFirstResponder()
                return false
            }
            i += 1
        }
        return true
    }
    
    public func displaySameNameMessage() {
        createAlert(title: "Renaming Error", message: "One or more fields have the same name OR is blank. Every field should be different from the other and cannot be blank.")
    }
    
    public func createAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    public func disallowRenameToSameName () -> Bool {
        
        var tempArray = [String()]
        var i:Int = 1
        let limit = calcNumOfDataOriginal() + 1
        
        while (i < limit) {
            switch i {
            case 1: tempArray.append(txtRnm1.text!)
            case 2: tempArray.append(txtRnm2.text!)
            case 3: tempArray.append(txtRnm3.text!)
            case 4: tempArray.append(txtRnm4.text!)
            case 5: tempArray.append(txtRnm5.text!)
            case 6: tempArray.append(txtRnm6.text!)
            case 7: tempArray.append(txtRnm7.text!)
            case 8: tempArray.append(txtRnm8.text!)
            case 9: tempArray.append(txtRnm9.text!)
            case 10: tempArray.append(txtRnm10.text!)
            case 11: tempArray.append(txtRnm11.text!)
            case 12: tempArray.append(txtRnm12.text!)
            case 13: tempArray.append(txtRnm13.text!)
            case 14: tempArray.append(txtRnm14.text!)
            case 15: tempArray.append(txtRnm15.text!)
            case 16: tempArray.append(txtRnm16.text!)
            case 17: tempArray.append(txtRnm17.text!)
            case 18: tempArray.append(txtRnm18.text!)
            case 19: tempArray.append(txtRnm19.text!)
            case 20: tempArray.append(txtRnm20.text!)
            case 21: tempArray.append(txtRnm21.text!)
            case 22: tempArray.append(txtRnm22.text!)
            case 23: tempArray.append(txtRnm23.text!)
            case 24: tempArray.append(txtRnm24.text!)
            case 25: tempArray.append(txtRnm25.text!)
            case 26: tempArray.append(txtRnm26.text!)
            case 27: tempArray.append(txtRnm27.text!)
            case 28: tempArray.append(txtRnm28.text!)
            case 29: tempArray.append(txtRnm29.text!)
            case 30: tempArray.append(txtRnm30.text!)
            default: print("error")
            }
            i += 1
        }
        
        for testee in tempArray {
            var counter:Int = 0
            for dealBreaker in tempArray {
                if (testee == dealBreaker) { counter += 1 }
            }
            if (counter > 1) {
                displaySameNameMessage()
                return false
            }
        }
        return true
    }
}
