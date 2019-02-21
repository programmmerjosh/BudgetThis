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
    
    var Segment:Bool = false
    var tempFN:Int = 0
    
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
        
        // Initialise textfields
        textDelegates()
        
        // Check for first run
        if (FirstViewController.stR.firstRun == true)
        {
            addInitialFieldsToDatabase()
        }
        
        // calc num of data
        Arraylimit = calcNumOfDataOriginal()
        
        // Fetch data
        fetchDatabaseDataThenDisplayIt()
        
        alphaOneOff()
        endRenaming()
        HideAll(Key: "n")
        showFields(field: Arraylimit)
        
        txtFirst.alpha = 0
        txtSecond.alpha = 0
        txtThird.alpha = 0
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
                self.alphaOneOff()
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
            self.alphaOneOff()
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
                self.alphaTwoOff()
                self.showFields(field: self.Arraylimit)
            })
        }
    }
    
    // constraint outlets
    @IBOutlet var blankLabelTopConstraint: NSLayoutConstraint!
    
    // adding a percentage to the first row
    @IBAction func addFirst(_ sender: UIButton) {
        
        // searches database for first field's values and stores values in global vars
        retrievepercent(autoNumber: "0")
        
        // gets correct amount to add, adds amount to global var and then values added to database
        addTopercent()
        
        amountOrPercentChangeInArray(name: global.name)
        
        // must display the new values appropriately
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
                self.alphaOneOn()
                self.hideRightTextFields(Key: "All")
                self.hideRightButtons(Key: "All")
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
                self.hideFields(field: numData)
                self.moveBlankLabel(direction: "Up", sizeConstraint: sizeConstraint)
            })
        }
        updateTotalDisplays()
    }
    @IBAction func RenameAFieldButtonAction(_ sender: UIButton) {
        
        initialRenameSet()
        UIView.animate(withDuration: 0.6, animations: {
            self.alphaTwoOn()
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
        
        // replaces new amounts in database, percentages stay same
        incomeChange()
        
        // income is added to database separately with unique autonumber
        addIncomeAmount(incomeAmount: tempIncome)
        
        // display percentage correctly at all times
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
    
    @IBAction func txt1AmountClicked(_ sender: UITextField) {
    
        if (txtFirst.text == "0.0")
        {
            txtFirst.text = ""
        }
    }
    @IBAction func txt2AmountClicked(_ sender: UITextField) {
        
        if (txtSecond.text == "0.0")
        {
            txtSecond.text = ""
        }
    }
    @IBAction func txt3AmountClicked(_ sender: UITextField) {
        
        if (txtThird.text == "0.0")
        {
            txtThird.text = ""
        }
    }
    @IBAction func txt4AmountClicked(_ sender: UITextField) {
        
        if (txtFourth.text == "0.0")
        {
            txtFourth.text = ""
        }
    }
    @IBAction func txt5AmountClicked(_ sender: UITextField) {
        
        if (txtFifth.text == "0.0")
        {
            txtFifth.text = ""
        }
    }
    @IBAction func txt6AmountClicked(_ sender: UITextField) {
        
        if (txtSixth.text == "0.0")
        {
            txtSixth.text = ""
        }
    }
    @IBAction func txt7AmountClicked(_ sender: UITextField) {
        
        if (txtSeventh.text == "0.0")
        {
            txtSeventh.text = ""
        }
    }
    @IBAction func txt8AmountClicked(_ sender: UITextField) {
        
        if (txtEighth.text == "0.0")
        {
            txtEighth.text = ""
        }
    }
    @IBAction func txt9AmountClicked(_ sender: UITextField) {
        
        if (txtNineth.text == "0.0")
        {
            txtNineth.text = ""
        }
    }
    @IBAction func txt10AmountClicked(_ sender: UITextField) {
        
        if (txtTenth.text == "0.0")
        {
            txtTenth.text = ""
        }
    }
    @IBAction func txt11AmountClicked(_ sender: UITextField) {
        
        if (txtEleventh.text == "0.0")
        {
            txtEleventh.text = ""
        }
    }
    @IBAction func txt12AmountClicked(_ sender: UITextField) {
        
        if (txtTwelfth.text == "0.0")
        {
            txtTwelfth.text = ""
        }
    }
    @IBAction func txt13AmountClicked(_ sender: UITextField) {
        
        if (txtThirteenth.text == "0.0")
        {
            txtThirteenth.text = ""
        }
    }
    @IBAction func txt14AmountClicked(_ sender: UITextField) {
        
        if (txtFourteenth.text == "0.0")
        {
            txtFourteenth.text = ""
        }
    }
    @IBAction func txt15AmountClicked(_ sender: UITextField) {
        
        if (txtFifteenth.text == "0.0")
        {
            txtFifteenth.text = ""
        }
    }
    @IBAction func txt16AmountClicked(_ sender: UITextField) {
        
        if (txtSixteenth.text == "0.0")
        {
            txtSixteenth.text = ""
        }
    }
    @IBAction func txt17AmountClicked(_ sender: UITextField) {
        
        if (txtSeventeenth.text == "0.0")
        {
            txtSeventeenth.text = ""
        }
    }
    @IBAction func txt18AmountClicked(_ sender: UITextField) {
        
        if (txtEighteenth.text == "0.0")
        {
            txtEighteenth.text = ""
        }
    }
    @IBAction func txt19AmountClicked(_ sender: UITextField) {
        
        if (txtNineteenth.text == "0.0")
        {
            txtNineteenth.text = ""
        }
    }
    @IBAction func txt20AmountClicked(_ sender: UITextField) {
        
        if (txtTwentieth.text == "0.0")
        {
            txtTwentieth.text = ""
        }
    }
    @IBAction func txt21AmountClicked(_ sender: UITextField) {
        
        if (txtTwentyFirst.text == "0.0")
        {
            txtTwentyFirst.text = ""
        }
    }
    @IBAction func txt22AmountClicked(_ sender: UITextField) {
        
        if (txtTwentySecond.text == "0.0")
        {
            txtTwentySecond.text = ""
        }
    }
    @IBAction func txt23AmountClicked(_ sender: UITextField) {
        
        if (txtTwentyThird.text == "0.0")
        {
            txtTwentyThird.text = ""
        }
    }
    @IBAction func txt24AmountClicked(_ sender: UITextField) {
        
        if (txtTwentyFourth.text == "0.0")
        {
            txtTwentyFourth.text = ""
        }
    }
    @IBAction func txt25AmountClicked(_ sender: UITextField) {
        
        if (txtTwentyFifth.text == "0.0")
        {
            txtTwentyFifth.text = ""
        }
    }
    @IBAction func txt26AmountClicked(_ sender: UITextField) {
        
        if (txtTwentySixth.text == "0.0")
        {
            txtTwentySixth.text = ""
        }
    }
    @IBAction func txt27AmountClicked(_ sender: UITextField) {
        
        if (txtTwentySeventh.text == "0.0")
        {
            txtTwentySeventh.text = ""
        }
    }
    @IBAction func txt28AmountClicked(_ sender: UITextField) {
        
        if (txtTwentyEighth.text == "0.0")
        {
            txtTwentyEighth.text = ""
        }
    }
    @IBAction func txt29AmountClicked(_ sender: UITextField) {
        
        if (txtTwentyNineth.text == "0.0")
        {
            txtTwentyNineth.text = ""
        }
    }
    @IBAction func txt30AmountClicked(_ sender: UITextField) {
        
        if (txtThirtieth.text == "0.0")
        {
            txtThirtieth.text = ""
        }
    }
    
    
    @IBAction func EditedNewFieldName(_ sender: UITextField) {
        
        limitLength = 25
        txtFN.adjustsFontSizeToFitWidth = true
    }
    @IBAction func Editedr1(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr2(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr3(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr4(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr5(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr6(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr7(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr8(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr9(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr10(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr11(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr12(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr13(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr14(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr15(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr16(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr17(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr18(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr19(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr20(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr21(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr22(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr23(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr24(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr25(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr26(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr27(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr28(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr29(_ sender: UITextField) {
        
        limitLength = 25
    }
    @IBAction func Editedr30(_ sender: UITextField) {
        
        limitLength = 25
    }
    
    // clicking on 1 or 2 to change between percentage alteration or amount input
    @IBAction func firstSegmentChanged(_ sender: UISegmentedControl) {
        
        mod = mod + 1
        
        switch mod % 2 {
        case 1:
            ExecuteSegmentTwo()
            Segment = true
        default:
            ExecuteSegmentOne()
            Segment = false
        }
        
//        if (mod % 2 == 1)
//        {
//            ExecuteSegmentTwo()
//            Segment = true
//        }
//        else
//        {
//            ExecuteSegmentOne()
//            Segment = false
//        }
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
    
    public func moveBlankLabelAppropriately(sizeConstraint:Int) {
        
        var next:Int = 0
        var position:Int = 0
        
        switch sizeConstraint {
        case ..<50:
            next = 42
        default:
            next = 72
        }
        
//        if (sizeConstraint < 50)
//        {
//            next = 42
//            //position = 42
//            print("small")
//        }
//        else{
//            next = 72
//            //position = 84
//            print("big")
//        }
        
        var i:Int = 3
        
        //Arraylimit = calcNumOfDataOriginal()
        
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
            
//            // if 1% of 5000 > current amount i.e 20: then addition value will = 0.2
//            if (amountPerPercent > difference)
//            {
//                answer = difference / tempIncome * 100
//            }
//                // else addition value will be = 1
//            else
//            {
//                answer = 1
//            }
        }
        // reset global variables so that they will be calculated properly next time button pressed.
        global.totalAmountFetched = 0
        global.totalPercentFetched = 0
        
        return answer
    }
    
    public func amountToSubtract() -> Double {
        
        step1inAmountChange()
        global.totalAmountFetched = global.totalAmountFetched + global.amount
        global.totalPercentFetched = global.totalPercentFetched + global.percent
        
        // amountPerPercent: 1% of 5000
        let amountPerPercent:Double = tempIncome * 0.01
        
        var answer:Double = 0
        
        // current field percentage > 0 then there can be a subtraction
        if (global.percent > 0)
        {
            switch amountPerPercent {
            case _ where amountPerPercent > global.amount:
                answer = global.percent
            default:
                answer = 1
            }
            
            
//            // if current amount < 1% of 5000 i.e 20 then subtraction will be = 0.2
//            if (global.amount < amountPerPercent)
//            {
//                answer = global.percent
//            }
//                // else addition value will be = 1
//            else
//            {
//                answer = 1
//            }
        }
        // reset global variables so that they will be calculated properly next time button pressed.
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
        
        if (txtFirst.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtFirst.text!)
        }
        
        if (txtSecond.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtSecond.text!)
        }
        
        if (txtThird.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtThird.text!)
        }
        
        if (txtFourth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtFourth.text!)
        }
        
        if (txtFifth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtFifth.text!)
        }
        
        if (txtSixth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtSixth.text!)
        }
        
        if (txtSeventh.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtSeventh.text!)
        }
        
        if (txtEighth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtEighth.text!)
        }
        
        if (txtNineth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtNineth.text!)
        }
        
        if (txtTenth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtTenth.text!)
        }
        
        if (txtEleventh.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtEleventh.text!)
        }
        
        if (txtTwelfth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtTwelfth.text!)
        }
        
        if (txtThirteenth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtThirteenth.text!)
        }
        
        if (txtFourteenth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtFourteenth.text!)
        }
        
        if (txtFifteenth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtFifteenth.text!)
        }
        
        if (txtSixteenth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtSixteenth.text!)
        }
        
        if (txtSeventeenth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtSeventeenth.text!)
        }
        
        if (txtEighteenth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtEighteenth.text!)
        }
        
        if (txtNineteenth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtNineteenth.text!)
        }
        
        if (txtTwentieth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtTwentieth.text!)
        }
        
        if (txtTwentyFirst.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtTwentyFirst.text!)
        }
        
        if (txtTwentySecond.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtTwentySecond.text!)
        }
        
        if (txtTwentyThird.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtTwentyThird.text!)
        }
        
        if (txtTwentyFourth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtTwentyFourth.text!)
        }
        
        if (txtTwentyFifth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtTwentyFifth.text!)
        }
        
        if (txtTwentySixth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtTwentySixth.text!)
        }
        
        if (txtTwentySeventh.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtTwentySeventh.text!)
        }
        
        if (txtTwentyEighth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtTwentyEighth.text!)
        }
        
        if (txtTwentyNineth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtTwentyNineth.text!)
        }
        
        if (txtThirtieth.text != "")
        {
            totalAmounts = totalAmounts + validDouble(double: txtThirtieth.text!)
        }
        
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
//        // FINAL VALIDATION
//        if (totalAmounts > tempIncome)
//        {
//            return false
//        }
//        else
//        {
//            return true
//        }
    }
    
    public func validDouble(double:String) -> Double {
        
        let inputString:String = double
        var newString = ""
        let period:Character = "."
        
        for Character in inputString {
            if (Character != "," && Character != ".")
            {
                newString = newString + String(Character)
            }
            else
            {
                newString = newString + String(period)
            }
        }
        
        switch Double(newString) {
        case nil:
            return 0
        default:
            return Double(newString)!
        }
//        if ((Double(newString)) != nil)
//        {
//            return Double(newString)!
//        }
//        else
//        {
//            return 0
//        }
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
    
    // takes all current values, puts them into an array, but changes amounts using the new income input by user, percentages stay same
    // then adds new values to database
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
        
        // add new & display
        var i:Int = 0
        let limit = names.count
        
        while (i < limit)
        {
            let add:Original = NSEntityDescription.insertNewObject(forEntityName: "Original", into: DatabaseController.getContext()) as! Original
            
            add.name = names[i]
            add.percent = Double(percentages[i])!
            add.autoNumber = autonumbers[i]
            add.amount = Double(amounts[i])!
            newAmountForTextFields(autoNumber: i, amount: Double(amounts[i])!)
            DatabaseController.saveContext()
            i += 1
        }
    }
    
    public func calcNumOfDataOriginal() -> Int {
        
        var answer:Int = 0
        let retrieve = NSFetchRequest<NSFetchRequestResult>(entityName: "Original")
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(retrieve)
            
            // minus 1 because we don't want to count income value
            answer = searchResults.count - 1
        }
        catch {
            print("Error! \(error)")
        }
        return answer
    }
    
    public func newAmountForTextFields(autoNumber:Int, amount:Double) {
        
        let answer = String(Double(round(100*Double(amount))/100))
        switch autoNumber {
        case 0: txtFirst.text = answer
        case 1: txtSecond.text = answer
        case 2: txtThird.text = answer
        case 3: txtFourth.text = answer
        case 4: txtFifth.text = answer
        case 5: txtSixth.text = answer
        case 6: txtSeventh.text = answer
        case 7: txtEighth.text = answer
        case 8: txtNineth.text = answer
        case 9: txtTenth.text = answer
        case 10: txtEleventh.text = answer
        case 11: txtTwelfth.text = answer
        case 12: txtThirteenth.text = answer
        case 13: txtFourteenth.text = answer
        case 14: txtFifteenth.text = answer
        case 15: txtSixteenth.text = answer
        case 16: txtSeventeenth.text = answer
        case 17: txtEighteenth.text = answer
        case 18: txtNineteenth.text = answer
        case 19: txtTwentieth.text = answer
        case 20: txtTwentyFirst.text = answer
        case 21: txtTwentySecond.text = answer
        case 22: txtTwentyThird.text = answer
        case 23: txtTwentyFourth.text = answer
        case 24: txtTwentyFifth.text = answer
        case 25: txtTwentySixth.text = answer
        case 26: txtTwentySeventh.text = answer
        case 27: txtTwentyEighth.text = answer
        case 28: txtTwentyNineth.text = answer
        case 29: txtThirtieth.text = answer
        default: print("error")
        }
//
//
//        if (autoNumber == 0)
//        {
//            txtFirst.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 1)
//        {
//            txtSecond.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 2)
//        {
//            txtThird.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 3)
//        {
//            txtFourth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 4)
//        {
//            txtFifth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 5)
//        {
//            txtSixth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 6)
//        {
//            txtSeventh.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 7)
//        {
//            txtEighth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 8)
//        {
//            txtNineth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 9)
//        {
//            txtTenth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 10)
//        {
//            txtEleventh.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 11)
//        {
//            txtTwelfth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 12)
//        {
//            txtThirteenth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 13)
//        {
//            txtFourteenth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 14)
//        {
//            txtFifteenth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 15)
//        {
//            txtSixteenth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 16)
//        {
//            txtSeventeenth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 17)
//        {
//            txtEighteenth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 18)
//        {
//            txtNineteenth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 19)
//        {
//            txtTwentieth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 20)
//        {
//            txtTwentyFirst.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 21)
//        {
//            txtTwentySecond.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 22)
//        {
//            txtTwentyThird.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 23)
//        {
//            txtTwentyFourth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 24)
//        {
//            txtTwentyFifth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 25)
//        {
//            txtTwentySixth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 26)
//        {
//            txtTwentySeventh.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 27)
//        {
//            txtTwentyEighth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 28)
//        {
//            txtTwentyNineth.text = String(Double(round(100*Double(amount))/100))
//        }
//        else if (autoNumber == 29)
//        {
//            txtThirtieth.text = String(Double(round(100*Double(amount))/100))
//        }
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
        if (autoNumber == "0")
        {
            lblFirst.text = String(Double(round(100*percent)/100)) + "%"
            txtFirst.text = String(Double(round(100*amount)/100))
            lbl1.text = String(name)
        }
        else if (autoNumber == "1")
        {
            lblSecond.text = String(Double(round(100*percent)/100)) + "%"
            txtSecond.text = String(Double(round(100*amount)/100))
            lbl2.text = String(name)
        }
        else if (autoNumber == "2")
        {
            lblThird.text = String(Double(round(100*percent)/100)) + "%"
            txtThird.text = String(Double(round(100*amount)/100))
            lbl3.text = String(name)
        }
        else if (autoNumber == "3")
        {
            lblFourth.text = String(Double(round(100*percent)/100)) + "%"
            txtFourth.text = String(Double(round(100*amount)/100))
            lbl4.text = String(name)
        }
        else if (autoNumber == "4")
        {
            lblFifth.text = String(Double(round(100*percent)/100)) + "%"
            txtFifth.text = String(Double(round(100*amount)/100))
            lbl5.text = String(name)
        }
        else if (autoNumber == "5")
        {
            lblSixth.text = String(Double(round(100*percent)/100)) + "%"
            txtSixth.text = String(Double(round(100*amount)/100))
            lbl6.text = String(name)
        }
        else if (autoNumber == "6")
        {
            lblSeventh.text = String(Double(round(100*percent)/100)) + "%"
            txtSeventh.text = String(Double(round(100*amount)/100))
            lbl7.text = String(name)
        }
        else if (autoNumber == "7")
        {
            lblEighth.text = String(Double(round(100*percent)/100)) + "%"
            txtEighth.text = String(Double(round(100*amount)/100))
            lbl8.text = String(name)
        }
        else if (autoNumber == "8")
        {
            lblNineth.text = String(Double(round(100*percent)/100)) + "%"
            txtNineth.text = String(Double(round(100*amount)/100))
            lbl9.text = String(name)
        }
        else if (autoNumber == "9")
        {
            lblTenth.text = String(Double(round(100*percent)/100)) + "%"
            txtTenth.text = String(Double(round(100*amount)/100))
            lbl10.text = String(name)
        }
        else if (autoNumber == "10")
        {
            lblEleventh.text = String(Double(round(100*percent)/100)) + "%"
            txtEleventh.text = String(Double(round(100*amount)/100))
            lbl11.text = String(name)
        }
        else if (autoNumber == "11")
        {
            lblTwelfth.text = String(Double(round(100*percent)/100)) + "%"
            txtTwelfth.text = String(Double(round(100*amount)/100))
            lbl12.text = String(name)
        }
        else if (autoNumber == "12")
        {
            lblThirteenth.text = String(Double(round(100*percent)/100)) + "%"
            txtThirteenth.text = String(Double(round(100*amount)/100))
            lbl13.text = String(name)
        }
        else if (autoNumber == "13")
        {
            lblFourteenth.text = String(Double(round(100*percent)/100)) + "%"
            txtFourteenth.text = String(Double(round(100*amount)/100))
            lbl14.text = String(name)
        }
        else if (autoNumber == "14")
        {
            lblFifteenth.text = String(Double(round(100*percent)/100)) + "%"
            txtFifteenth.text = String(Double(round(100*amount)/100))
            lbl15.text = String(name)
        }
        else if (autoNumber == "15")
        {
            lblSixteenth.text = String(Double(round(100*percent)/100)) + "%"
            txtSixteenth.text = String(Double(round(100*amount)/100))
            lbl16.text = String(name)
        }
        else if (autoNumber == "16")
        {
            lblSeventeenth.text = String(Double(round(100*percent)/100)) + "%"
            txtSeventeenth.text = String(Double(round(100*amount)/100))
            lbl17.text = String(name)
        }
        else if (autoNumber == "17")
        {
            lblEighteenth.text = String(Double(round(100*percent)/100)) + "%"
            txtEighteenth.text = String(Double(round(100*amount)/100))
            lbl18.text = String(name)
        }
        else if (autoNumber == "18")
        {
            lblNineteenth.text = String(Double(round(100*percent)/100)) + "%"
            txtNineteenth.text = String(Double(round(100*amount)/100))
            lbl19.text = String(name)
        }
        else if (autoNumber == "19")
        {
            lblTwentieth.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentieth.text = String(Double(round(100*amount)/100))
            lbl20.text = String(name)
        }
        else if (autoNumber == "20")
        {
            lblTwentyFirst.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentyFirst.text = String(Double(round(100*amount)/100))
            lbl21.text = String(name)
        }
        else if (autoNumber == "21")
        {
            lblTwentySecond.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentySecond.text = String(Double(round(100*amount)/100))
            lbl22.text = String(name)
        }
        else if (autoNumber == "22")
        {
            lblTwentyThird.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentyThird.text = String(Double(round(100*amount)/100))
            lbl23.text = String(name)
        }
        else if (autoNumber == "23")
        {
            lblTwentyFourth.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentyFourth.text = String(Double(round(100*amount)/100))
            lbl24.text = String(name)
        }
        else if (autoNumber == "24")
        {
            lblTwentyFifth.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentyFifth.text = String(Double(round(100*amount)/100))
            lbl25.text = String(name)
        }
        else if (autoNumber == "25")
        {
            lblTwentySixth.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentySixth.text = String(Double(round(100*amount)/100))
            lbl26.text = String(name)
        }
        else if (autoNumber == "26")
        {
            lblTwentySeventh.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentySeventh.text = String(Double(round(100*amount)/100))
            lbl27.text = String(name)
        }
        else if (autoNumber == "27")
        {
            lblTwentyEighth.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentyEighth.text = String(Double(round(100*amount)/100))
            lbl28.text = String(name)
        }
        else if (autoNumber == "28")
        {
            lblTwentyNineth.text = String(Double(round(100*percent)/100)) + "%"
            txtTwentyNineth.text = String(Double(round(100*amount)/100))
            lbl29.text = String(name)
        }
        else if (autoNumber == "29")
        {
            lblThirtieth.text = String(Double(round(100*percent)/100)) + "%"
            txtThirtieth.text = String(Double(round(100*amount)/100))
            lbl30.text = String(name)
        }
        
        if (autoNumber == "999") {
            tempIncome = Double(amount)
        }
    }
    
    // displays available % and income
    public func displayIncomeAndAvailable(usedPercent:Double) {
        let avPercent:Double = 100 - usedPercent
        lblTotal.text = String(Double(round(100*avPercent)/100)) + "%"
        txtTotal.text = String(tempIncome)
    }
    
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
    
    // TESTS APP IF IT'S BEEN USED BEFORE
    public func firstRun() -> Bool {
        
        let retrieve = NSFetchRequest<NSFetchRequestResult>(entityName: "Original")
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(retrieve)
            
            if (searchResults.count > 0)
            {
                return false
            }
            else
            {
                return true
            }
        }
        catch {
            print("Error! \(error)")
        }
        
        return true
    }
    
    // GLOBAL VARS
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
                clearTextFieldAmountOnceDeleted(autoNumber: autoNumber)
                DatabaseController.getContext().delete(result)
            }
        }
        catch {
            print("Error! \(error)")
        }
        DatabaseController.saveContext()
    }
    
    public func clearTextFieldAmountOnceDeleted(autoNumber:String) {
        if (autoNumber == "0")
        {
            txtFirst.text = ""
        }
        else if (autoNumber == "1")
        {
            txtSecond.text = ""
        }
        else if (autoNumber == "2")
        {
            txtThird.text = ""
        }
        else if (autoNumber == "3")
        {
            txtFourth.text = ""
        }
        else if (autoNumber == "4")
        {
            txtFifth.text = ""
        }
        else if (autoNumber == "5")
        {
            txtSixth.text = ""
        }
        else if (autoNumber == "6")
        {
            txtSeventh.text = ""
        }
        else if (autoNumber == "7")
        {
            txtEighth.text = ""
        }
        else if (autoNumber == "8")
        {
            txtNineth.text = ""
        }
        else if (autoNumber == "9")
        {
            txtTenth.text = ""
        }
        else if (autoNumber == "10")
        {
            txtEleventh.text = ""
        }
        else if (autoNumber == "11")
        {
            txtTwelfth.text = ""
        }
        else if (autoNumber == "12")
        {
            txtThirteenth.text = ""
        }
        else if (autoNumber == "13")
        {
            txtFourteenth.text = ""
        }
        else if (autoNumber == "14")
        {
            txtFifteenth.text = ""
        }
        else if (autoNumber == "15")
        {
            txtSixteenth.text = ""
        }
        else if (autoNumber == "16")
        {
            txtSeventeenth.text = ""
        }
        else if (autoNumber == "17")
        {
            txtEighteenth.text = ""
        }
        else if (autoNumber == "18")
        {
            txtNineteenth.text = ""
        }
        else if (autoNumber == "19")
        {
            txtTwentieth.text = ""
        }
        else if (autoNumber == "20")
        {
            txtTwentyFirst.text = ""
        }
        else if (autoNumber == "21")
        {
            txtTwentySecond.text = ""
        }
        else if (autoNumber == "22")
        {
            txtTwentyThird.text = ""
        }
        else if (autoNumber == "23")
        {
            txtTwentyFourth.text = ""
        }
        else if (autoNumber == "24")
        {
            txtTwentyFifth.text = ""
        }
        else if (autoNumber == "25")
        {
            txtTwentySixth.text = ""
        }
        else if (autoNumber == "26")
        {
            txtTwentySeventh.text = ""
        }
        else if (autoNumber == "27")
        {
            txtTwentyEighth.text = ""
        }
        else if (autoNumber == "28")
        {
            txtTwentyNineth.text = ""
        }
        else if (autoNumber == "29")
        {
            txtThirtieth.text = ""
        }
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
    
    public func alphaOneOff() {
        
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
    
    public func alphaOneOn() {
        
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
    }
    
    public func alphaTwoOff() {
        doneRenamingOutlet.alpha = 0.0
        addFieldOutlet.alpha = 1.0
        removeFieldOutlet.alpha = 1.0
        renameFieldsOutlet.alpha = 1.0
        segmentSelectorOutlet.alpha = 1.0
    }
    
    public func alphaTwoOn() {
        doneRenamingOutlet.alpha = 1.0
        addFieldOutlet.alpha = 0
        removeFieldOutlet.alpha = 0
        renameFieldsOutlet.alpha = 0
        segmentSelectorOutlet.alpha = 0
    }
    
    func moveBlankLabel(direction: String, sizeConstraint:Int)
    {
        var min:Int = 0
        var max:Int = 0
        var amount:Int = 0
        
        if (sizeConstraint < 50)
        {
            min = 12
            max = 1146
            amount = 42
        }
        else {
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
        lbl1.alpha = 1.0
        lbl2.alpha = 1.0
        lbl3.alpha = 1.0
        
        if (Segment == true)
        {
            txtFirst.alpha = 1.0
            txtSecond.alpha = 1.0
            txtThird.alpha = 1.0
        }
        else
        {
            lblFirst.alpha = 1.0
            firstPlusOutlet.alpha = 1.0
            firstMinusOutlet.alpha = 1.0
            lblSecond.alpha = 1.0
            secondPlusOutlet.alpha = 1.0
            secondMinusOutlet.alpha = 1.0
            lblThird.alpha = 1.0
            thirdPlusOutlet.alpha = 1.0
            thirdMinusOutlet.alpha = 1.0
        }
        
        if (field >= 4)
        {
            lbl4.alpha = 1.0
            
            if (Segment == true)
            {
                txtFourth.alpha = 1.0
            }
            else
            {
                lblFourth.alpha = 1.0
                FourthPlusOutlet.alpha = 1.0
                FourthMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 5)
        {
            lbl5.alpha = 1.0
            
            if (Segment == true)
            {
                txtFifth.alpha = 1.0
            }
            else
            {
                lblFifth.alpha = 1.0
                FifthPlusOutlet.alpha = 1.0
                FifthMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 6)
        {
            lbl6.alpha = 1.0
            
            if (Segment == true)
            {
                txtSixth.alpha = 1.0
            }
            else
            {
                lblSixth.alpha = 1.0
                SixthPlusOutlet.alpha = 1.0
                SixthMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 7)
        {
            lbl7.alpha = 1.0
            
            if (Segment == true)
            {
                txtSeventh.alpha = 1.0
            }
            else
            {
                lblSeventh.alpha = 1.0
                SeventhPlusOutlet.alpha = 1.0
                SeventhMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 8)
        {
            lbl8.alpha = 1.0
            
            if (Segment == true)
            {
                txtEighth.alpha = 1.0
            }
            else
            {
                lblEighth.alpha = 1.0
                EighthPlusOutlet.alpha = 1.0
                EighthMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 9)
        {
            lbl9.alpha = 1.0
            
            if (Segment == true)
            {
                txtNineth.alpha = 1.0
            }
            else
            {
                lblNineth.alpha = 1.0
                NinethPlusOutlet.alpha = 1.0
                NinethMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 10)
        {
            lbl10.alpha = 1.0
            
            if (Segment == true)
            {
                txtTenth.alpha = 1.0
            }
            else
            {
                lblTenth.alpha = 1.0
                TenthPlusOutlet.alpha = 1.0
                TenthMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 11)
        {
            lbl11.alpha = 1.0
            
            if (Segment == true)
            {
                txtEleventh.alpha = 1.0
            }
            else
            {
                lblEleventh.alpha = 1.0
                EleventhPlusOutlet.alpha = 1.0
                EleventhMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 12)
        {
            lbl12.alpha = 1.0
            
            if (Segment == true)
            {
                txtTwelfth.alpha = 1.0
            }
            else
            {
                lblTwelfth.alpha = 1.0
                TwelfthPlusOutlet.alpha = 1.0
                TwelfthMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 13)
        {
            lbl13.alpha = 1.0
            
            if (Segment == true)
            {
                txtThirteenth.alpha = 1.0
            }
            else
            {
                lblThirteenth.alpha = 1.0
                ThirteenthPlusOutlet.alpha = 1.0
                ThirteenthMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 14)
        {
            lbl14.alpha = 1.0
            
            if (Segment == true)
            {
                txtFourteenth.alpha = 1.0
            }
            else
            {
                lblFourteenth.alpha = 1.0
                FourteenthPlusOutlet.alpha = 1.0
                FourteenthMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 15)
        {
            lbl15.alpha = 1.0
            
            if (Segment == true)
            {
                txtFifteenth.alpha = 1.0
            }
            else
            {
                lblFifteenth.alpha = 1.0
                FifteenthPlusOutlet.alpha = 1.0
                FifteenthMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 16)
        {
            lbl16.alpha = 1.0
            
            if (Segment == true)
            {
                txtSixteenth.alpha = 1.0
            }
            else
            {
                lblSixteenth.alpha = 1.0
                SixteenthPlusOutlet.alpha = 1.0
                SixteenthMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 17)
        {
            lbl17.alpha = 1.0
            
            if (Segment == true)
            {
                txtSeventeenth.alpha = 1.0
            }
            else
            {
                lblSeventeenth.alpha = 1.0
                SeventeenthPlusOutlet.alpha = 1.0
                SeventeenthMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 18)
        {
            lbl18.alpha = 1.0
            
            if (Segment == true)
            {
                txtEighteenth.alpha = 1.0
            }
            else
            {
                lblEighteenth.alpha = 1.0
                EighteenthPlusOutlet.alpha = 1.0
                EighteenthMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 19)
        {
            lbl19.alpha = 1.0
            
            if (Segment == true)
            {
                txtNineteenth.alpha = 1.0
            }
            else
            {
                lblNineteenth.alpha = 1.0
                NineteenthPlusOutlet.alpha = 1.0
                NineteenthMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 20)
        {
            lbl20.alpha = 1.0
            
            if (Segment == true)
            {
                txtTwentieth.alpha = 1.0
            }
            else
            {
                lblTwentieth.alpha = 1.0
                TwentiethPlusOutlet.alpha = 1.0
                TwentiethMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 21)
        {
            lbl21.alpha = 1.0
            
            if (Segment == true)
            {
                txtTwentyFirst.alpha = 1.0
            }
            else
            {
                lblTwentyFirst.alpha = 1.0
                TwentyFirstPlusOutlet.alpha = 1.0
                TwentyFirstMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 22)
        {
            lbl22.alpha = 1.0
            
            if (Segment == true)
            {
                txtTwentySecond.alpha = 1.0
            }
            else
            {
                lblTwentySecond.alpha = 1.0
                TwentySecondPlusOutlet.alpha = 1.0
                TwentySecondMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 23)
        {
            lbl23.alpha = 1.0
            
            if (Segment == true)
            {
                txtTwentyThird.alpha = 1.0
            }
            else
            {
                lblTwentyThird.alpha = 1.0
                TwentyThirdPlusOutlet.alpha = 1.0
                TwentyThirdMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 24)
        {
            lbl24.alpha = 1.0
            
            if (Segment == true)
            {
                txtTwentyFourth.alpha = 1.0
            }
            else
            {
                lblTwentyFourth.alpha = 1.0
                TwentyFourthPlusOutlet.alpha = 1.0
                TwentyFourthMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 25)
        {
            lbl25.alpha = 1.0
            
            if (Segment == true)
            {
                txtTwentyFifth.alpha = 1.0
            }
            else
            {
                lblTwentyFifth.alpha = 1.0
                TwentyFifthPlusOutlet.alpha = 1.0
                TwentyFifthMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 26)
        {
            lbl26.alpha = 1.0
            
            if (Segment == true)
            {
                txtTwentySixth.alpha = 1.0
            }
            else
            {
                lblTwentySixth.alpha = 1.0
                TwentySixthPlusOutlet.alpha = 1.0
                TwentySixthMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 27)
        {
            lbl27.alpha = 1.0
            
            if (Segment == true)
            {
                txtTwentySeventh.alpha = 1.0
            }
            else
            {
                lblTwentySeventh.alpha = 1.0
                TwentySeventhPlusOutlet.alpha = 1.0
                TwentySeventhMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 28)
        {
            lbl28.alpha = 1.0
            
            if (Segment == true)
            {
                txtTwentyEighth.alpha = 1.0
            }
            else
            {
                lblTwentyEighth.alpha = 1.0
                TwentyEighthPlusOutlet.alpha = 1.0
                TwentyEighthMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 29)
        {
            lbl29.alpha = 1.0
            
            if (Segment == true)
            {
                txtTwentyNineth.alpha = 1.0
            }
            else
            {
                lblTwentyNineth.alpha = 1.0
                TwentyNinethPlusOutlet.alpha = 1.0
                TwentyNinethMinusOutlet.alpha = 1.0
            }
        }
        if (field >= 30)
        {
            lbl30.alpha = 1.0
            
            if (Segment == true)
            {
                txtThirtieth.alpha = 1.0
            }
            else
            {
                lblThirtieth.alpha = 1.0
                ThirtiethPlusOutlet.alpha = 1.0
                ThirtiethMinusOutlet.alpha = 1.0
            }
        }
        else if (field == 3)
        {
            print("showing no additional fields")
        }
        else if (field < 3)
        {
            //error -> incorrect field
            print("error with field parameter: " + String(field))
        }
    }
    
    func hideFields(field: Int)
    {
        if (field == 4)
        {
            lbl4.alpha = 0.0
            txtFourth.alpha = 0.0
            lblFourth.alpha = 0.0
            FourthPlusOutlet.alpha = 0.0
            FourthMinusOutlet.alpha = 0.0
        }
        else if (field == 5)
        {
            lbl5.alpha = 0.0
            txtFifth.alpha = 0.0
            lblFifth.alpha = 0.0
            FifthPlusOutlet.alpha = 0.0
            FifthMinusOutlet.alpha = 0.0
        }
        else if (field == 6)
        {
            lbl6.alpha = 0.0
            txtSixth.alpha = 0.0
            lblSixth.alpha = 0.0
            SixthPlusOutlet.alpha = 0.0
            SixthMinusOutlet.alpha = 0.0
        }
        else if (field == 7)
        {
            lbl7.alpha = 0.0
            txtSeventh.alpha = 0.0
            lblSeventh.alpha = 0.0
            SeventhPlusOutlet.alpha = 0.0
            SeventhMinusOutlet.alpha = 0.0
        }
        else if (field == 8)
        {
            lbl8.alpha = 0.0
            txtEighth.alpha = 0.0
            lblEighth.alpha = 0.0
            EighthPlusOutlet.alpha = 0.0
            EighthMinusOutlet.alpha = 0.0
        }
        else if (field == 9)
        {
            lbl9.alpha = 0.0
            txtNineth.alpha = 0.0
            lblNineth.alpha = 0.0
            NinethPlusOutlet.alpha = 0.0
            NinethMinusOutlet.alpha = 0.0
        }
        else if (field == 10)
        {
            lbl10.alpha = 0.0
            txtTenth.alpha = 0.0
            lblTenth.alpha = 0.0
            TenthPlusOutlet.alpha = 0.0
            TenthMinusOutlet.alpha = 0.0
        }
        else if (field == 11)
        {
            lbl11.alpha = 0.0
            txtEleventh.alpha = 0.0
            lblEleventh.alpha = 0.0
            EleventhPlusOutlet.alpha = 0.0
            EleventhMinusOutlet.alpha = 0.0
        }
        else if (field == 12)
        {
            lbl12.alpha = 0.0
            txtTwelfth.alpha = 0.0
            lblTwelfth.alpha = 0.0
            TwelfthPlusOutlet.alpha = 0.0
            TwelfthMinusOutlet.alpha = 0.0
        }
        else if (field == 13)
        {
            lbl13.alpha = 0.0
            txtThirteenth.alpha = 0.0
            lblThirteenth.alpha = 0.0
            ThirteenthPlusOutlet.alpha = 0.0
            ThirteenthMinusOutlet.alpha = 0.0
        }
        else if (field == 14)
        {
            lbl14.alpha = 0.0
            txtFourteenth.alpha = 0.0
            lblFourteenth.alpha = 0.0
            FourteenthPlusOutlet.alpha = 0.0
            FourteenthMinusOutlet.alpha = 0.0
        }
        else if (field == 15)
        {
            lbl15.alpha = 0.0
            txtFifteenth.alpha = 0.0
            lblFifteenth.alpha = 0.0
            FifteenthPlusOutlet.alpha = 0.0
            FifteenthMinusOutlet.alpha = 0.0
        }
        else if (field == 16)
        {
            lbl16.alpha = 0.0
            txtSixteenth.alpha = 0.0
            lblSixteenth.alpha = 0.0
            SixteenthPlusOutlet.alpha = 0.0
            SixteenthMinusOutlet.alpha = 0.0
        }
        else if (field == 17)
        {
            lbl17.alpha = 0.0
            txtSeventeenth.alpha = 0.0
            lblSeventeenth.alpha = 0.0
            SeventeenthPlusOutlet.alpha = 0.0
            SeventeenthMinusOutlet.alpha = 0.0
        }
        else if (field == 18)
        {
            lbl18.alpha = 0.0
            txtEighteenth.alpha = 0.0
            lblEighteenth.alpha = 0.0
            EighteenthPlusOutlet.alpha = 0.0
            EighteenthMinusOutlet.alpha = 0.0
        }
        else if (field == 19)
        {
            lbl19.alpha = 0.0
            txtNineteenth.alpha = 0.0
            lblNineteenth.alpha = 0.0
            NineteenthPlusOutlet.alpha = 0.0
            NineteenthMinusOutlet.alpha = 0.0
        }
        else if (field == 20)
        {
            lbl20.alpha = 0.0
            txtTwentieth.alpha = 0.0
            lblTwentieth.alpha = 0.0
            TwentiethPlusOutlet.alpha = 0.0
            TwentiethMinusOutlet.alpha = 0.0
        }
        else if (field == 21)
        {
            lbl21.alpha = 0.0
            txtTwentyFirst.alpha = 0.0
            lblTwentyFirst.alpha = 0.0
            TwentyFirstPlusOutlet.alpha = 0.0
            TwentyFirstMinusOutlet.alpha = 0.0
        }
        else if (field == 22)
        {
            lbl22.alpha = 0.0
            txtTwentySecond.alpha = 0.0
            lblTwentySecond.alpha = 0.0
            TwentySecondPlusOutlet.alpha = 0.0
            TwentySecondMinusOutlet.alpha = 0.0
        }
        else if (field == 23)
        {
            lbl23.alpha = 0.0
            txtTwentyThird.alpha = 0.0
            lblTwentyThird.alpha = 0.0
            TwentyThirdPlusOutlet.alpha = 0.0
            TwentyThirdMinusOutlet.alpha = 0.0
        }
        else if (field == 24)
        {
            lbl24.alpha = 0.0
            txtTwentyFourth.alpha = 0.0
            lblTwentyFourth.alpha = 0.0
            TwentyFourthPlusOutlet.alpha = 0.0
            TwentyFourthMinusOutlet.alpha = 0.0
        }
        else if (field == 25)
        {
            lbl25.alpha = 0.0
            txtTwentyFifth.alpha = 0.0
            lblTwentyFifth.alpha = 0.0
            TwentyFifthPlusOutlet.alpha = 0.0
            TwentyFifthMinusOutlet.alpha = 0.0
        }
        else if (field == 26)
        {
            lbl26.alpha = 0.0
            txtTwentySixth.alpha = 0.0
            lblTwentySixth.alpha = 0.0
            TwentySixthPlusOutlet.alpha = 0.0
            TwentySixthMinusOutlet.alpha = 0.0
        }
        else if (field == 27)
        {
            lbl27.alpha = 0.0
            txtTwentySeventh.alpha = 0.0
            lblTwentySeventh.alpha = 0.0
            TwentySeventhPlusOutlet.alpha = 0.0
            TwentySeventhMinusOutlet.alpha = 0.0
        }
        else if (field == 28)
        {
            lbl28.alpha = 0.0
            txtTwentyEighth.alpha = 0.0
            lblTwentyEighth.alpha = 0.0
            TwentyEighthPlusOutlet.alpha = 0.0
            TwentyEighthMinusOutlet.alpha = 0.0
        }
        else if (field == 29)
        {
            lbl29.alpha = 0.0
            txtTwentyNineth.alpha = 0.0
            lblTwentyNineth.alpha = 0.0
            TwentyNinethPlusOutlet.alpha = 0.0
            TwentyNinethMinusOutlet.alpha = 0.0
        }
        else if (field == 30)
        {
            lbl30.alpha = 0.0
            txtThirtieth.alpha = 0.0
            lblThirtieth.alpha = 0.0
            ThirtiethPlusOutlet.alpha = 0.0
            ThirtiethMinusOutlet.alpha = 0.0
        }
        else if (field == 3)
        {
            print("showing no additional fields")
        }
        else
        {
            //error -> incorrect field
            print("error with field parameter")
        }
    }
    
    // 100% WORKING CORRECTLY
    func HideAll(Key: String)
    {
        if (Key == "All")
        {
            hideLeft(Key: "All")
            hideRightTextFields(Key: "All")
            hideRightButtons(Key: "All")
        }
        else
        {
            hideLeft(Key: "n")
            hideRightTextFields(Key: "n")
            hideRightButtons(Key: "n")
        }
    }
    
    // 100% WORKING CORRECTLY
    func hideLeft(Key: String)
    {
        if (Key == "All")
        {
            lbl1.alpha = 0.0
            lbl2.alpha = 0.0
            lbl3.alpha = 0.0
        }
        
        lbl4.alpha = 0.0
        lbl5.alpha = 0.0
        lbl6.alpha = 0.0
        lbl7.alpha = 0.0
        lbl8.alpha = 0.0
        lbl9.alpha = 0.0
        lbl10.alpha = 0.0
        lbl11.alpha = 0.0
        lbl12.alpha = 0.0
        lbl13.alpha = 0.0
        lbl14.alpha = 0.0
        lbl15.alpha = 0.0
        lbl16.alpha = 0.0
        lbl17.alpha = 0.0
        lbl18.alpha = 0.0
        lbl19.alpha = 0.0
        lbl20.alpha = 0.0
        lbl21.alpha = 0.0
        lbl22.alpha = 0.0
        lbl23.alpha = 0.0
        lbl24.alpha = 0.0
        lbl25.alpha = 0.0
        lbl26.alpha = 0.0
        lbl27.alpha = 0.0
        lbl28.alpha = 0.0
        lbl29.alpha = 0.0
        lbl30.alpha = 0.0
    }
    
    // 100% WORKING CORRECTLY
    func hideRightTextFields(Key: String)
    {
        if (Key == "All")
        {
            txtFirst.alpha = 0.0
            txtSecond.alpha = 0.0
            txtThird.alpha = 0.0
        }
        
        txtFourth.alpha = 0.0
        txtFifth.alpha = 0.0
        txtSixth.alpha = 0.0
        txtSeventh.alpha = 0.0
        txtEighth.alpha = 0.0
        txtNineth.alpha = 0.0
        txtTenth.alpha = 0.0
        txtEleventh.alpha = 0.0
        txtTwelfth.alpha = 0.0
        txtThirteenth.alpha = 0.0
        txtFourteenth.alpha = 0.0
        txtFifteenth.alpha = 0.0
        txtSixteenth.alpha = 0.0
        txtSeventeenth.alpha = 0.0
        txtEighteenth.alpha = 0.0
        txtNineteenth.alpha = 0.0
        txtTwentieth.alpha = 0.0
        txtTwentyFirst.alpha = 0.0
        txtTwentySecond.alpha = 0.0
        txtTwentyThird.alpha = 0.0
        txtTwentyFourth.alpha = 0.0
        txtTwentyFifth.alpha = 0.0
        txtTwentySixth.alpha = 0.0
        txtTwentySeventh.alpha = 0.0
        txtTwentyEighth.alpha = 0.0
        txtTwentyNineth.alpha = 0.0
        txtThirtieth.alpha = 0.0
    }
    
    // 100% WORKING CORRECTLY
    func hideRightButtons(Key: String)
    {
        if (Key == "All")
        {
            lblFirst.alpha = 0.0
            lblSecond.alpha = 0.0
            lblThird.alpha = 0.0
            
            firstPlusOutlet.alpha = 0.0
            secondPlusOutlet.alpha = 0.0
            thirdPlusOutlet.alpha = 0.0
            
            firstMinusOutlet.alpha = 0.0
            secondMinusOutlet.alpha = 0.0
            thirdMinusOutlet.alpha = 0.0
        }
        
        lblFourth.alpha = 0.0
        lblFifth.alpha = 0.0
        lblSixth.alpha = 0.0
        lblSeventh.alpha = 0.0
        lblEighth.alpha = 0.0
        lblNineth.alpha = 0.0
        lblTenth.alpha = 0.0
        lblEleventh.alpha = 0.0
        lblTwelfth.alpha = 0.0
        lblThirteenth.alpha = 0.0
        lblFourteenth.alpha = 0.0
        lblFifteenth.alpha = 0.0
        lblSixteenth.alpha = 0.0
        lblSeventeenth.alpha = 0.0
        lblEighteenth.alpha = 0.0
        lblNineteenth.alpha = 0.0
        lblTwentieth.alpha = 0.0
        lblTwentyFirst.alpha = 0.0
        lblTwentySecond.alpha = 0.0
        lblTwentyThird.alpha = 0.0
        lblTwentyFourth.alpha = 0.0
        lblTwentyFifth.alpha = 0.0
        lblTwentySixth.alpha = 0.0
        lblTwentySeventh.alpha = 0.0
        lblTwentyEighth.alpha = 0.0
        lblTwentyNineth.alpha = 0.0
        lblThirtieth.alpha = 0.0
        
        FourthPlusOutlet.alpha = 0.0
        FifthPlusOutlet.alpha = 0.0
        SixthPlusOutlet.alpha = 0.0
        SeventhPlusOutlet.alpha = 0.0
        EighthPlusOutlet.alpha = 0.0
        NinethPlusOutlet.alpha = 0.0
        TenthPlusOutlet.alpha = 0.0
        EleventhPlusOutlet.alpha = 0.0
        TwelfthPlusOutlet.alpha = 0.0
        ThirteenthPlusOutlet.alpha = 0.0
        FourteenthPlusOutlet.alpha = 0.0
        FifteenthPlusOutlet.alpha = 0.0
        SixteenthPlusOutlet.alpha = 0.0
        SeventeenthPlusOutlet.alpha = 0.0
        EighteenthPlusOutlet.alpha = 0.0
        NineteenthPlusOutlet.alpha = 0.0
        TwentiethPlusOutlet.alpha = 0.0
        TwentyFirstPlusOutlet.alpha = 0.0
        TwentySecondPlusOutlet.alpha = 0.0
        TwentyThirdPlusOutlet.alpha = 0.0
        TwentyFourthPlusOutlet.alpha = 0.0
        TwentyFifthPlusOutlet.alpha = 0.0
        TwentySixthPlusOutlet.alpha = 0.0
        TwentySeventhPlusOutlet.alpha = 0.0
        TwentyEighthPlusOutlet.alpha = 0.0
        TwentyNinethPlusOutlet.alpha = 0.0
        ThirtiethPlusOutlet.alpha = 0.0
        
        FourthMinusOutlet.alpha = 0.0
        FifthMinusOutlet.alpha = 0.0
        SixthMinusOutlet.alpha = 0.0
        SeventhMinusOutlet.alpha = 0.0
        EighthMinusOutlet.alpha = 0.0
        NinethMinusOutlet.alpha = 0.0
        TenthMinusOutlet.alpha = 0.0
        EleventhMinusOutlet.alpha = 0.0
        TwelfthMinusOutlet.alpha = 0.0
        ThirteenthMinusOutlet.alpha = 0.0
        FourteenthMinusOutlet.alpha = 0.0
        FifteenthMinusOutlet.alpha = 0.0
        SixteenthMinusOutlet.alpha = 0.0
        SeventeenthMinusOutlet.alpha = 0.0
        EighteenthMinusOutlet.alpha = 0.0
        NineteenthMinusOutlet.alpha = 0.0
        TwentiethMinusOutlet.alpha = 0.0
        TwentyFirstMinusOutlet.alpha = 0.0
        TwentySecondMinusOutlet.alpha = 0.0
        TwentyThirdMinusOutlet.alpha = 0.0
        TwentyFourthMinusOutlet.alpha = 0.0
        TwentyFifthMinusOutlet.alpha = 0.0
        TwentySixthMinusOutlet.alpha = 0.0
        TwentySeventhMinusOutlet.alpha = 0.0
        TwentyEighthMinusOutlet.alpha = 0.0
        TwentyNinethMinusOutlet.alpha = 0.0
        ThirtiethMinusOutlet.alpha = 0.0
    }
    
    // 100% WORKING CORRECTLY
    func ExecuteSegmentTwo()
    {
        txtFirst.alpha = 1.0
        lblFirst.alpha = 0.0
        firstPlusOutlet.alpha = 0.0
        firstMinusOutlet.alpha = 0.0
        
        txtSecond.alpha = 1.0
        lblSecond.alpha = 0.0
        secondPlusOutlet.alpha = 0.0
        secondMinusOutlet.alpha = 0.0
        
        txtThird.alpha = 1.0
        lblThird.alpha = 0.0
        thirdPlusOutlet.alpha = 0.0
        thirdMinusOutlet.alpha = 0.0
        
        if (lbl4.alpha == 1.0)
        {
            txtFourth.alpha = 1.0
            lblFourth.alpha = 0.0
            FourthPlusOutlet.alpha = 0.0
            FourthMinusOutlet.alpha = 0.0
        }
        
        if (lbl5.alpha == 1.0)
        {
            txtFifth.alpha = 1.0
            lblFifth.alpha = 0.0
            FifthPlusOutlet.alpha = 0.0
            FifthMinusOutlet.alpha = 0.0
        }
        
        if (lbl6.alpha == 1.0)
        {
            txtSixth.alpha = 1.0
            lblSixth.alpha = 0.0
            SixthPlusOutlet.alpha = 0.0
            SixthMinusOutlet.alpha = 0.0
        }
        
        if (lbl7.alpha == 1.0)
        {
            txtSeventh.alpha = 1.0
            lblSeventh.alpha = 0.0
            SeventhPlusOutlet.alpha = 0.0
            SeventhMinusOutlet.alpha = 0.0
        }
        
        if (lbl8.alpha == 1.0)
        {
            txtEighth.alpha = 1.0
            lblEighth.alpha = 0.0
            EighthPlusOutlet.alpha = 0.0
            EighthMinusOutlet.alpha = 0.0
        }
        
        if (lbl9.alpha == 1.0)
        {
            txtNineth.alpha = 1.0
            lblNineth.alpha = 0.0
            NinethPlusOutlet.alpha = 0.0
            NinethMinusOutlet.alpha = 0.0
        }
        
        if (lbl10.alpha == 1.0)
        {
            txtTenth.alpha = 1.0
            lblTenth.alpha = 0.0
            TenthPlusOutlet.alpha = 0.0
            TenthMinusOutlet.alpha = 0.0
        }
        
        if (lbl11.alpha == 1.0)
        {
            txtEleventh.alpha = 1.0
            lblEleventh.alpha = 0.0
            EleventhPlusOutlet.alpha = 0.0
            EleventhMinusOutlet.alpha = 0.0
        }
        
        if (lbl12.alpha == 1.0)
        {
            txtTwelfth.alpha = 1.0
            lblTwelfth.alpha = 0.0
            TwelfthPlusOutlet.alpha = 0.0
            TwelfthMinusOutlet.alpha = 0.0
        }
        
        if (lbl13.alpha == 1.0)
        {
            txtThirteenth.alpha = 1.0
            lblThirteenth.alpha = 0.0
            ThirteenthPlusOutlet.alpha = 0.0
            ThirteenthMinusOutlet.alpha = 0.0
        }
        
        if (lbl14.alpha == 1.0)
        {
            txtFourteenth.alpha = 1.0
            lblFourteenth.alpha = 0.0
            FourteenthPlusOutlet.alpha = 0.0
            FourteenthMinusOutlet.alpha = 0.0
        }
        
        if (lbl15.alpha == 1.0)
        {
            txtFifteenth.alpha = 1.0
            lblFifteenth.alpha = 0.0
            FifteenthPlusOutlet.alpha = 0.0
            FifteenthMinusOutlet.alpha = 0.0
        }
        
        if (lbl16.alpha == 1.0)
        {
            txtSixteenth.alpha = 1.0
            lblSixteenth.alpha = 0.0
            SixteenthPlusOutlet.alpha = 0.0
            SixteenthMinusOutlet.alpha = 0.0
        }
        
        if (lbl17.alpha == 1.0)
        {
            txtSeventeenth.alpha = 1.0
            lblSeventeenth.alpha = 0.0
            SeventeenthPlusOutlet.alpha = 0.0
            SeventeenthMinusOutlet.alpha = 0.0
        }
        
        if (lbl18.alpha == 1.0)
        {
            txtEighteenth.alpha = 1.0
            lblEighteenth.alpha = 0.0
            EighteenthPlusOutlet.alpha = 0.0
            EighteenthMinusOutlet.alpha = 0.0
        }
        
        if (lbl19.alpha == 1.0)
        {
            txtNineteenth.alpha = 1.0
            lblNineteenth.alpha = 0.0
            NineteenthPlusOutlet.alpha = 0.0
            NineteenthMinusOutlet.alpha = 0.0
        }
        
        if (lbl20.alpha == 1.0)
        {
            txtTwentieth.alpha = 1.0
            lblTwentieth.alpha = 0.0
            TwentiethPlusOutlet.alpha = 0.0
            TwentiethMinusOutlet.alpha = 0.0
        }
        
        if (lbl21.alpha == 1.0)
        {
            txtTwentyFirst.alpha = 1.0
            lblTwentyFirst.alpha = 0.0
            TwentyFirstPlusOutlet.alpha = 0.0
            TwentyFirstMinusOutlet.alpha = 0.0
        }
        
        if (lbl22.alpha == 1.0)
        {
            txtTwentySecond.alpha = 1.0
            lblTwentySecond.alpha = 0.0
            TwentySecondPlusOutlet.alpha = 0.0
            TwentySecondMinusOutlet.alpha = 0.0
        }
        
        if (lbl23.alpha == 1.0)
        {
            txtTwentyThird.alpha = 1.0
            lblTwentyThird.alpha = 0.0
            TwentyThirdPlusOutlet.alpha = 0.0
            TwentyThirdMinusOutlet.alpha = 0.0
        }
        
        if (lbl24.alpha == 1.0)
        {
            txtTwentyFourth.alpha = 1.0
            lblTwentyFourth.alpha = 0.0
            TwentyFourthPlusOutlet.alpha = 0.0
            TwentyFourthMinusOutlet.alpha = 0.0
        }
        
        if (lbl25.alpha == 1.0)
        {
            txtTwentyFifth.alpha = 1.0
            lblTwentyFifth.alpha = 0.0
            TwentyFifthPlusOutlet.alpha = 0.0
            TwentyFifthMinusOutlet.alpha = 0.0
        }
        
        if (lbl26.alpha == 1.0)
        {
            txtTwentySixth.alpha = 1.0
            lblTwentySixth.alpha = 0.0
            TwentySixthPlusOutlet.alpha = 0.0
            TwentySixthMinusOutlet.alpha = 0.0
        }
        
        if (lbl27.alpha == 1.0)
        {
            txtTwentySeventh.alpha = 1.0
            lblTwentySeventh.alpha = 0.0
            TwentySeventhPlusOutlet.alpha = 0.0
            TwentySeventhMinusOutlet.alpha = 0.0
        }
        
        if (lbl28.alpha == 1.0)
        {
            txtTwentyEighth.alpha = 1.0
            lblTwentyEighth.alpha = 0.0
            TwentyEighthPlusOutlet.alpha = 0.0
            TwentyEighthMinusOutlet.alpha = 0.0
        }
        
        if (lbl29.alpha == 1.0)
        {
            txtTwentyNineth.alpha = 1.0
            lblTwentyNineth.alpha = 0.0
            TwentyNinethPlusOutlet.alpha = 0.0
            TwentyNinethMinusOutlet.alpha = 0.0
        }
        
        if (lbl30.alpha == 1.0)
        {
            txtThirtieth.alpha = 1.0
            lblThirtieth.alpha = 0.0
            ThirtiethPlusOutlet.alpha = 0.0
            ThirtiethMinusOutlet.alpha = 0.0
        }
    }
    
    // 100% WORKING CORRECTLY
    func ExecuteSegmentOne()
    {
        txtFirst.alpha = 0.0
        lblFirst.alpha = 1.0
        firstPlusOutlet.alpha = 1.0
        firstMinusOutlet.alpha = 1.0
        
        txtSecond.alpha = 0.0
        lblSecond.alpha = 1.0
        secondPlusOutlet.alpha = 1.0
        secondMinusOutlet.alpha = 1.0
        
        txtThird.alpha = 0.0
        lblThird.alpha = 1.0
        thirdPlusOutlet.alpha = 1.0
        thirdMinusOutlet.alpha = 1.0
        
        if (lbl4.alpha == 1.0)
        {
            txtFourth.alpha = 0.0
            lblFourth.alpha = 1.0
            FourthPlusOutlet.alpha = 1.0
            FourthMinusOutlet.alpha = 1.0
        }
        
        if (lbl5.alpha == 1.0)
        {
            txtFifth.alpha = 0.0
            lblFifth.alpha = 1.0
            FifthPlusOutlet.alpha = 1.0
            FifthMinusOutlet.alpha = 1.0
        }
        
        if (lbl6.alpha == 1.0)
        {
            txtSixth.alpha = 0.0
            lblSixth.alpha = 1.0
            SixthPlusOutlet.alpha = 1.0
            SixthMinusOutlet.alpha = 1.0
        }
        
        if (lbl7.alpha == 1.0)
        {
            txtSeventh.alpha = 0.0
            lblSeventh.alpha = 1.0
            SeventhPlusOutlet.alpha = 1.0
            SeventhMinusOutlet.alpha = 1.0
        }
        
        if (lbl8.alpha == 1.0)
        {
            txtEighth.alpha = 0.0
            lblEighth.alpha = 1.0
            EighthPlusOutlet.alpha = 1.0
            EighthMinusOutlet.alpha = 1.0
        }
        
        if (lbl9.alpha == 1.0)
        {
            txtNineth.alpha = 0.0
            lblNineth.alpha = 1.0
            NinethPlusOutlet.alpha = 1.0
            NinethMinusOutlet.alpha = 1.0
        }
        
        if (lbl10.alpha == 1.0)
        {
            txtTenth.alpha = 0.0
            lblTenth.alpha = 1.0
            TenthPlusOutlet.alpha = 1.0
            TenthMinusOutlet.alpha = 1.0
        }
        
        if (lbl11.alpha == 1.0)
        {
            txtEleventh.alpha = 0.0
            lblEleventh.alpha = 1.0
            EleventhPlusOutlet.alpha = 1.0
            EleventhMinusOutlet.alpha = 1.0
        }
        
        if (lbl12.alpha == 1.0)
        {
            txtTwelfth.alpha = 0.0
            lblTwelfth.alpha = 1.0
            TwelfthPlusOutlet.alpha = 1.0
            TwelfthMinusOutlet.alpha = 1.0
        }
        
        if (lbl13.alpha == 1.0)
        {
            txtThirteenth.alpha = 0.0
            lblThirteenth.alpha = 1.0
            ThirteenthPlusOutlet.alpha = 1.0
            ThirteenthMinusOutlet.alpha = 1.0
        }
        
        if (lbl14.alpha == 1.0)
        {
            txtFourteenth.alpha = 0.0
            lblFourteenth.alpha = 1.0
            FourteenthPlusOutlet.alpha = 1.0
            FourteenthMinusOutlet.alpha = 1.0
        }
        
        if (lbl15.alpha == 1.0)
        {
            txtFifteenth.alpha = 0.0
            lblFifteenth.alpha = 1.0
            FifteenthPlusOutlet.alpha = 1.0
            FifteenthMinusOutlet.alpha = 1.0
        }
        
        if (lbl16.alpha == 1.0)
        {
            txtSixteenth.alpha = 0.0
            lblSixteenth.alpha = 1.0
            SixteenthPlusOutlet.alpha = 1.0
            SixteenthMinusOutlet.alpha = 1.0
        }
        
        if (lbl17.alpha == 1.0)
        {
            txtSeventeenth.alpha = 0.0
            lblSeventeenth.alpha = 1.0
            SeventeenthPlusOutlet.alpha = 1.0
            SeventeenthMinusOutlet.alpha = 1.0
        }
        
        if (lbl18.alpha == 1.0)
        {
            txtEighteenth.alpha = 0.0
            lblEighteenth.alpha = 1.0
            EighteenthPlusOutlet.alpha = 1.0
            EighteenthMinusOutlet.alpha = 1.0
        }
        
        if (lbl19.alpha == 1.0)
        {
            txtNineteenth.alpha = 0.0
            lblNineteenth.alpha = 1.0
            NineteenthPlusOutlet.alpha = 1.0
            NineteenthMinusOutlet.alpha = 1.0
        }
        
        if (lbl20.alpha == 1.0)
        {
            txtTwentieth.alpha = 0.0
            lblTwentieth.alpha = 1.0
            TwentiethPlusOutlet.alpha = 1.0
            TwentiethMinusOutlet.alpha = 1.0
        }
        
        if (lbl21.alpha == 1.0)
        {
            txtTwentyFirst.alpha = 0.0
            lblTwentyFirst.alpha = 1.0
            TwentyFirstPlusOutlet.alpha = 1.0
            TwentyFirstMinusOutlet.alpha = 1.0
        }
        
        if (lbl22.alpha == 1.0)
        {
            txtTwentySecond.alpha = 0.0
            lblTwentySecond.alpha = 1.0
            TwentySecondPlusOutlet.alpha = 1.0
            TwentySecondMinusOutlet.alpha = 1.0
        }
        
        if (lbl23.alpha == 1.0)
        {
            txtTwentyThird.alpha = 0.0
            lblTwentyThird.alpha = 1.0
            TwentyThirdPlusOutlet.alpha = 1.0
            TwentyThirdMinusOutlet.alpha = 1.0
        }
        
        if (lbl24.alpha == 1.0)
        {
            txtTwentyFourth.alpha = 0.0
            lblTwentyFourth.alpha = 1.0
            TwentyFourthPlusOutlet.alpha = 1.0
            TwentyFourthMinusOutlet.alpha = 1.0
        }
        
        if (lbl25.alpha == 1.0)
        {
            txtTwentyFifth.alpha = 0.0
            lblTwentyFifth.alpha = 1.0
            TwentyFifthPlusOutlet.alpha = 1.0
            TwentyFifthMinusOutlet.alpha = 1.0
        }
        
        if (lbl26.alpha == 1.0)
        {
            txtTwentySixth.alpha = 0.0
            lblTwentySixth.alpha = 1.0
            TwentySixthPlusOutlet.alpha = 1.0
            TwentySixthMinusOutlet.alpha = 1.0
        }
        
        if (lbl27.alpha == 1.0)
        {
            txtTwentySeventh.alpha = 0.0
            lblTwentySeventh.alpha = 1.0
            TwentySeventhPlusOutlet.alpha = 1.0
            TwentySeventhMinusOutlet.alpha = 1.0
        }
        
        if (lbl28.alpha == 1.0)
        {
            txtTwentyEighth.alpha = 0.0
            lblTwentyEighth.alpha = 1.0
            TwentyEighthPlusOutlet.alpha = 1.0
            TwentyEighthMinusOutlet.alpha = 1.0
        }
        
        if (lbl29.alpha == 1.0)
        {
            txtTwentyNineth.alpha = 0.0
            lblTwentyNineth.alpha = 1.0
            TwentyNinethPlusOutlet.alpha = 1.0
            TwentyNinethMinusOutlet.alpha = 1.0
        }
        
        if (lbl30.alpha == 1.0)
        {
            txtThirtieth.alpha = 0.0
            lblThirtieth.alpha = 1.0
            ThirtiethPlusOutlet.alpha = 1.0
            ThirtiethMinusOutlet.alpha = 1.0
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
    
    // HIDES RENAME TEXTFIELDS
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
        let nimble:Int = calcNumOfDataOriginal()
        
        txtRnm1.alpha = 1.0
        txtRnm2.alpha = 1.0
        txtRnm3.alpha = 1.0
        
        if (nimble > 3)
        {
            txtRnm4.alpha = 1
        }
        if (nimble > 4)
        {
            txtRnm5.alpha = 1
        }
        if (nimble > 5)
        {
            txtRnm6.alpha = 1
        }
        if (nimble > 6)
        {
            txtRnm7.alpha = 1
        }
        if (nimble > 7)
        {
            txtRnm8.alpha = 1
        }
        if (nimble > 8)
        {
            txtRnm9.alpha = 1
        }
        if (nimble > 9)
        {
            txtRnm10.alpha = 1
        }
        if (nimble > 10)
        {
            txtRnm11.alpha = 1
        }
        if (nimble > 11)
        {
            txtRnm12.alpha = 1
        }
        if (nimble > 12)
        {
            txtRnm13.alpha = 1
        }
        if (nimble > 13)
        {
            txtRnm14.alpha = 1
        }
        if (nimble > 14)
        {
            txtRnm15.alpha = 1
        }
        if (nimble > 15)
        {
            txtRnm16.alpha = 1
        }
        if (nimble > 16)
        {
            txtRnm17.alpha = 1
        }
        if (nimble > 17)
        {
            txtRnm18.alpha = 1
        }
        if (nimble > 18)
        {
            txtRnm19.alpha = 1
        }
        if (nimble > 19)
        {
            txtRnm20.alpha = 1
        }
        if (nimble > 20)
        {
            txtRnm21.alpha = 1
        }
        if (nimble > 21)
        {
            txtRnm22.alpha = 1
        }
        if (nimble > 22)
        {
            txtRnm23.alpha = 1
        }
        if (nimble > 23)
        {
            txtRnm24.alpha = 1
        }
        if (nimble > 24)
        {
            txtRnm25.alpha = 1
        }
        if (nimble > 25)
        {
            txtRnm26.alpha = 1
        }
        if (nimble > 26)
        {
            txtRnm27.alpha = 1
        }
        if (nimble > 27)
        {
            txtRnm28.alpha = 1
        }
        if (nimble > 28)
        {
            txtRnm29.alpha = 1
        }
        if (nimble > 29)
        {
            txtRnm30.alpha = 1
        }
        hideRightButtons(Key: "All")
        hideLeft(Key: "All")
        
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
        
        var newFieldName:String = String()
        var oldFieldName:String = String()
        
        if ((txtRnm1.alpha == 1) && (txtRnm1.text != "") && (txtRnm1.text != lbl1.text))
        {
            newFieldName = txtRnm1.text!
            oldFieldName = lbl1.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm2.alpha == 1) && (txtRnm2.text != "") && (txtRnm2.text != lbl2.text))
        {
            newFieldName = txtRnm2.text!
            oldFieldName = lbl2.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm3.alpha == 1) && (txtRnm3.text != "") && (txtRnm3.text != lbl3.text))
        {
            newFieldName = txtRnm3.text!
            oldFieldName = lbl3.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm4.alpha == 1) && (txtRnm4.text != "") && (txtRnm4.text != lbl4.text))
        {
            newFieldName = txtRnm4.text!
            oldFieldName = lbl4.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm5.alpha == 1) && (txtRnm5.text != "") && (txtRnm5.text != lbl5.text))
        {
            newFieldName = txtRnm5.text!
            oldFieldName = lbl5.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm6.alpha == 1) && (txtRnm6.text != "") && (txtRnm6.text != lbl6.text))
        {
            newFieldName = txtRnm6.text!
            oldFieldName = lbl6.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm7.alpha == 1) && (txtRnm7.text != "") && (txtRnm7.text != lbl7.text))
        {
            newFieldName = txtRnm7.text!
            oldFieldName = lbl7.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm8.alpha == 1) && (txtRnm8.text != "") && (txtRnm8.text != lbl8.text))
        {
            newFieldName = txtRnm8.text!
            oldFieldName = lbl8.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm9.alpha == 1) && (txtRnm9.text != "") && (txtRnm9.text != lbl9.text))
        {
            newFieldName = txtRnm9.text!
            oldFieldName = lbl9.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm10.alpha == 1) && (txtRnm10.text != "") && (txtRnm10.text != lbl10.text))
        {
            newFieldName = txtRnm10.text!
            oldFieldName = lbl10.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm11.alpha == 1) && (txtRnm11.text != "") && (txtRnm11.text != lbl11.text))
        {
            newFieldName = txtRnm11.text!
            oldFieldName = lbl11.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm12.alpha == 1) && (txtRnm12.text != "") && (txtRnm12.text != lbl12.text))
        {
            newFieldName = txtRnm12.text!
            oldFieldName = lbl12.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm13.alpha == 1) && (txtRnm13.text != "") && (txtRnm13.text != lbl13.text))
        {
            newFieldName = txtRnm13.text!
            oldFieldName = lbl13.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm14.alpha == 1) && (txtRnm14.text != "") && (txtRnm14.text != lbl14.text))
        {
            newFieldName = txtRnm14.text!
            oldFieldName = lbl14.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm15.alpha == 1) && (txtRnm15.text != "") && (txtRnm15.text != lbl15.text))
        {
            newFieldName = txtRnm15.text!
            oldFieldName = lbl15.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm16.alpha == 1) && (txtRnm16.text != "") && (txtRnm16.text != lbl16.text))
        {
            newFieldName = txtRnm16.text!
            oldFieldName = lbl16.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm17.alpha == 1) && (txtRnm17.text != "") && (txtRnm17.text != lbl17.text))
        {
            newFieldName = txtRnm17.text!
            oldFieldName = lbl17.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm18.alpha == 1) && (txtRnm18.text != "") && (txtRnm18.text != lbl18.text))
        {
            newFieldName = txtRnm18.text!
            oldFieldName = lbl18.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm19.alpha == 1) && (txtRnm19.text != "") && (txtRnm19.text != lbl19.text))
        {
            newFieldName = txtRnm19.text!
            oldFieldName = lbl19.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm20.alpha == 1) && (txtRnm20.text != "") && (txtRnm20.text != lbl20.text))
        {
            newFieldName = txtRnm20.text!
            oldFieldName = lbl20.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm21.alpha == 1) && (txtRnm21.text != "") && (txtRnm21.text != lbl21.text))
        {
            newFieldName = txtRnm21.text!
            oldFieldName = lbl21.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm22.alpha == 1) && (txtRnm22.text != "") && (txtRnm22.text != lbl22.text))
        {
            newFieldName = txtRnm22.text!
            oldFieldName = lbl22.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm23.alpha == 1) && (txtRnm23.text != "") && (txtRnm23.text != lbl23.text))
        {
            newFieldName = txtRnm23.text!
            oldFieldName = lbl23.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm24.alpha == 1) && (txtRnm24.text != "") && (txtRnm24.text != lbl24.text))
        {
            newFieldName = txtRnm24.text!
            oldFieldName = lbl24.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm25.alpha == 1) && (txtRnm25.text != "") && (txtRnm25.text != lbl25.text))
        {
            newFieldName = txtRnm25.text!
            oldFieldName = lbl25.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm26.alpha == 1) && (txtRnm26.text != "") && (txtRnm26.text != lbl26.text))
        {
            newFieldName = txtRnm26.text!
            oldFieldName = lbl26.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm27.alpha == 1) && (txtRnm27.text != "") && (txtRnm27.text != lbl27.text))
        {
            newFieldName = txtRnm27.text!
            oldFieldName = lbl27.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm28.alpha == 1) && (txtRnm28.text != "") && (txtRnm28.text != lbl28.text))
        {
            newFieldName = txtRnm28.text!
            oldFieldName = lbl28.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm29.alpha == 1) && (txtRnm29.text != "") && (txtRnm29.text != lbl29.text))
        {
            newFieldName = txtRnm29.text!
            oldFieldName = lbl29.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
        if ((txtRnm30.alpha == 1) && (txtRnm30.text != "") && (txtRnm30.text != lbl30.text))
        {
            newFieldName = txtRnm30.text!
            oldFieldName = lbl30.text!
            newNameInArray(old: oldFieldName, new: newFieldName)
        }
    }
    
    public func newNameInArray(old:String, new:String) {
        var i:Int = 0
        let limit = calcNumOfDataOriginal()
        
        while (i < limit)
        {
            if (FirstViewController.stR.fields[i] == old)
            {
                FirstViewController.stR.fields[i] = new
            }
            i += 1
        }
    }
    
    public func initialRenameSet() {
        if (lbl1.alpha == 1)
        {
            txtRnm1.text = lbl1.text
        }
        if (lbl2.alpha == 1)
        {
            txtRnm2.text = lbl2.text
        }
        if (lbl3.alpha == 1)
        {
            txtRnm3.text = lbl3.text
        }
        if (lbl4.alpha == 1)
        {
            txtRnm4.text = lbl4.text
        }
        if (lbl5.alpha == 1)
        {
            txtRnm5.text = lbl5.text
        }
        if (lbl6.alpha == 1)
        {
            txtRnm6.text = lbl6.text
        }
        if (lbl7.alpha == 1)
        {
            txtRnm7.text = lbl7.text
        }
        if (lbl8.alpha == 1)
        {
            txtRnm8.text = lbl8.text
        }
        if (lbl9.alpha == 1)
        {
            txtRnm9.text = lbl9.text
        }
        if (lbl10.alpha == 1)
        {
            txtRnm10.text = lbl10.text
        }
        if (lbl11.alpha == 1)
        {
            txtRnm11.text = lbl11.text
        }
        if (lbl12.alpha == 1)
        {
            txtRnm12.text = lbl12.text
        }
        if (lbl13.alpha == 1)
        {
            txtRnm13.text = lbl13.text
        }
        if (lbl14.alpha == 1)
        {
            txtRnm14.text = lbl14.text
        }
        if (lbl15.alpha == 1)
        {
            txtRnm15.text = lbl15.text
        }
        if (lbl16.alpha == 1)
        {
            txtRnm16.text = lbl16.text
        }
        if (lbl17.alpha == 1)
        {
            txtRnm17.text = lbl17.text
        }
        if (lbl18.alpha == 1)
        {
            txtRnm18.text = lbl18.text
        }
        if (lbl19.alpha == 1)
        {
            txtRnm19.text = lbl19.text
        }
        if (lbl20.alpha == 1)
        {
            txtRnm20.text = lbl20.text
        }
        if (lbl21.alpha == 1)
        {
            txtRnm21.text = lbl21.text
        }
        if (lbl22.alpha == 1)
        {
            txtRnm22.text = lbl22.text
        }
        if (lbl23.alpha == 1)
        {
            txtRnm23.text = lbl23.text
        }
        if (lbl24.alpha == 1)
        {
            txtRnm24.text = lbl24.text
        }
        if (lbl25.alpha == 1)
        {
            txtRnm25.text = lbl25.text
        }
        if (lbl26.alpha == 1)
        {
            txtRnm26.text = lbl26.text
        }
        if (lbl27.alpha == 1)
        {
            txtRnm27.text = lbl27.text
        }
        if (lbl28.alpha == 1)
        {
            txtRnm28.text = lbl28.text
        }
        if (lbl29.alpha == 1)
        {
            txtRnm29.text = lbl29.text
        }
        if (lbl30.alpha == 1)
        {
            txtRnm30.text = lbl30.text
        }
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
        //        print("WARNING MESSAGE TO BE DISPLAYED")
        createAlert(title: "Renaming Error", message: "One or more fields have the same name OR is blank. Every field should be different from the other and cannot be blank.")
    }
    
    public func createAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
            // add action here
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    public func disallowRenameToSameName () -> Bool {
        
        var tempArray = [String()]
        
        if (txtRnm1.alpha == 1)
        {
            tempArray.append(txtRnm1.text!)
        }
        if (txtRnm2.alpha == 1)
        {
            tempArray.append(txtRnm2.text!)
        }
        if (txtRnm3.alpha == 1)
        {
            tempArray.append(txtRnm3.text!)
        }
        if (txtRnm4.alpha == 1)
        {
            tempArray.append(txtRnm4.text!)
        }
        if (txtRnm5.alpha == 1)
        {
            tempArray.append(txtRnm5.text!)
        }
        if (txtRnm6.alpha == 1)
        {
            tempArray.append(txtRnm6.text!)
        }
        if (txtRnm7.alpha == 1)
        {
            tempArray.append(txtRnm7.text!)
        }
        if (txtRnm8.alpha == 1)
        {
            tempArray.append(txtRnm8.text!)
        }
        if (txtRnm9.alpha == 1)
        {
            tempArray.append(txtRnm9.text!)
        }
        if (txtRnm10.alpha == 1)
        {
            tempArray.append(txtRnm10.text!)
        }
        if (txtRnm11.alpha == 1)
        {
            tempArray.append(txtRnm11.text!)
        }
        if (txtRnm12.alpha == 1)
        {
            tempArray.append(txtRnm12.text!)
        }
        if (txtRnm13.alpha == 1)
        {
            tempArray.append(txtRnm13.text!)
        }
        if (txtRnm14.alpha == 1)
        {
            tempArray.append(txtRnm14.text!)
        }
        if (txtRnm15.alpha == 1)
        {
            tempArray.append(txtRnm15.text!)
        }
        if (txtRnm16.alpha == 1)
        {
            tempArray.append(txtRnm16.text!)
        }
        if (txtRnm17.alpha == 1)
        {
            tempArray.append(txtRnm17.text!)
        }
        if (txtRnm18.alpha == 1)
        {
            tempArray.append(txtRnm18.text!)
        }
        if (txtRnm19.alpha == 1)
        {
            tempArray.append(txtRnm19.text!)
        }
        if (txtRnm20.alpha == 1)
        {
            tempArray.append(txtRnm20.text!)
        }
        if (txtRnm21.alpha == 1)
        {
            tempArray.append(txtRnm21.text!)
        }
        if (txtRnm22.alpha == 1)
        {
            tempArray.append(txtRnm22.text!)
        }
        if (txtRnm23.alpha == 1)
        {
            tempArray.append(txtRnm23.text!)
        }
        if (txtRnm24.alpha == 1)
        {
            tempArray.append(txtRnm24.text!)
        }
        if (txtRnm25.alpha == 1)
        {
            tempArray.append(txtRnm25.text!)
        }
        if (txtRnm26.alpha == 1)
        {
            tempArray.append(txtRnm26.text!)
        }
        if (txtRnm27.alpha == 1)
        {
            tempArray.append(txtRnm27.text!)
        }
        if (txtRnm28.alpha == 1)
        {
            tempArray.append(txtRnm28.text!)
        }
        if (txtRnm29.alpha == 1)
        {
            tempArray.append(txtRnm29.text!)
        }
        if (txtRnm30.alpha == 1)
        {
            tempArray.append(txtRnm30.text!)
        }
        
        let limit:Int = tempArray.count
        var i:Int = 0
        var counter:Int = 0
        
        if (txtRnm1.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm1.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm1.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm2.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm2.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm2.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm3.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm3.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm3.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm4.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm4.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm4.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm5.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm5.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm5.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm6.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm6.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm6.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm7.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm7.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm7.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm8.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm8.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm8.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm9.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm9.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm9.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm10.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm10.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm10.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm11.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm11.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm11.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm12.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm12.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm12.becomeFirstResponder()
                return false
            }
        }
        if (txtRnm13.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm13.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm13.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm14.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm14.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm14.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm15.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm15.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm15.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm16.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm16.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm16.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm17.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm17.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm17.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm18.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm18.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm18.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm19.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm19.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm19.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm20.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm20.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm20.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm21.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm21.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm21.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm22.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm22.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm22.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm23.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm23.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm23.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm24.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm24.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm24.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm25.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm25.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm25.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm26.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm26.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm26.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm27.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm27.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm27.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm28.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm28.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm28.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm29.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm29.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm29.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        if (txtRnm30.alpha == 1)
        {
            while (i < limit)
            {
                if (txtRnm30.text == tempArray[i])
                {
                    counter += 1
                }
                i += 1
            }
            
            if (counter > 1)
            {
                displaySameNameMessage()
                txtRnm30.becomeFirstResponder()
                return false
            }
            i = 0
            counter = 0
        }
        return true
    }
}
