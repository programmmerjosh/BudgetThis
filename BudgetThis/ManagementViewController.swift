//
//  ManagementViewController.swift
//  BudgetThis
//
//  Created by admin on 19/08/2019.
//  Copyright © 2019 Josh_Dog101. All rights reserved.
//

import UIKit
import CoreData

class ManagementViewController: UIViewController {

    @IBOutlet weak var txtRenameEnvelope : UITextField!
    @IBOutlet weak var txtAssigned       : UITextField!
    @IBAction func applyChanges(_ sender: Any) {
        updateEnvelopeData()
    }
    
    var name     :String = String()
    var oldName  :String = String()
    var assigned :Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtRenameEnvelope.text = name
        txtAssigned.text       = String(assigned)
        oldName                = txtRenameEnvelope.text!
    }
    
    func updateEnvelopeData() {
        let newName :String = txtRenameEnvelope.text!
        let assigned:Double = Double(txtAssigned.text!)!
        
        let fetchData = NSFetchRequest<NSFetchRequestResult>(entityName: "Envelope")
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(fetchData)
            
            for result in searchResults as! [Envelope] {
                if result.name == oldName {
                    DatabaseController.getContext().delete(result)
                    
                    let addition:Envelope = NSEntityDescription.insertNewObject(forEntityName: "Envelope", into: DatabaseController.getContext()) as! Envelope
                    
                    addition.name     = newName
                    addition.assigned = Double(round(100*assigned)/100)
                }
            }
            DatabaseController.saveContext()
        }
        catch {
            print("Error! \(error)")
        }
    }
}
