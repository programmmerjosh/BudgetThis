//
//  MainDisplayViewController.swift
//  BudgetThis
//
//  Created by Joshua on 2017/03/08.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit
import CoreData

class MainDisplayViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var arrEnvelope       :[Envelope]           = []
    let vcIncome          :IncomeViewController = IncomeViewController()
    var ctrRefreshControl :UIRefreshControl     = UIRefreshControl()
    var txtAlertInsertion :UITextField?
    var arrayIndex        :Int                  = 0
    
    let aColor = UIColor(named: "customControlColor")
    
    @IBOutlet var myTableView: UITableView!
    @IBOutlet weak var lblEnvelopeTitle: UILabel!
    @IBOutlet weak var lblAssignedTitle: UILabel!
    @IBOutlet weak var lblRemainingTitle: UILabel!
    @IBAction func addEnvelopeAction(_ sender: Any) {
        promptNewEnvelopeMessage()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrEnvelope.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell             = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainDisplayTableViewCell
        var remaining:Double = 0
        if let envelopeName = arrEnvelope[indexPath.row].name {
            remaining = calcEnvelopeRemainingBal(envelopeName: envelopeName)
        }
        let temp:Double      = Double(cell.remaining.text!) != nil ? Double(cell.remaining.text!)! : 0
        
        cell.name.text       = arrEnvelope[indexPath.row].name
        cell.assigned.text   = String(arrEnvelope[indexPath.row].assigned)
        cell.remaining.text  = String(remaining)
        
        switch temp {
        case  0:
            cell.remaining.textColor = UIColor.black
        case ..<0:
            cell.remaining.textColor = UIColor.red
        default:
            cell.remaining.textColor = UIColor.green
        }
        
        cell.name.adjustsFontSizeToFitWidth      = true
        cell.assigned.adjustsFontSizeToFitWidth  = true
        cell.remaining.adjustsFontSizeToFitWidth = true
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        arrayIndex = indexPath.row
        performSegue(withIdentifier: "manage", sender: self)
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            deleteEnvelope(envelopeName: arrEnvelope[indexPath.row].name!)
            arrEnvelope.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            RefreshData()
        }
    }
    
    @objc func RefreshData() {
        myTableView.reloadData()
        ctrRefreshControl.endRefreshing()
    }
    
    func txtAlertInsertion(textfield: UITextField!) {
        txtAlertInsertion              = textfield
        txtAlertInsertion?.placeholder = "New Envelope Name"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblEnvelopeTitle.textColor  = aColor
        lblAssignedTitle.textColor  = aColor
        lblRemainingTitle.textColor = aColor
        
        myTableView.delegate    = self
        myTableView.dataSource  = self
        
        deleteOldData()
        fetchEnvelopeData()
        ctrRefreshControl.addTarget(self, action: #selector(RefreshData), for: UIControl.Event.valueChanged)
        myTableView.refreshControl = ctrRefreshControl
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        RefreshData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "manage" {
            let vc       = segue.destination as! ManagementViewController
            let name     = String(self.arrEnvelope[arrayIndex].name!)
            let assigned = Double(self.arrEnvelope[arrayIndex].assigned)
            vc.name      = name
            vc.assigned  = assigned
        }
    }
    
    public func deleteOldData() {
        
        let currentMonth = saveMonth()
        
        for i in 1...9
        {
            let monthHistory :Int    = (((currentMonth - 1) + i) % 12) + 1
            let strNew       :String = String(monthHistory)
            
            let predicate = NSPredicate(format: "month = %@", strNew)
            let fetchData = NSFetchRequest<NSFetchRequestResult>(entityName: "Transaction")
            fetchData.predicate = predicate
            
            do {
                let searchResults = try DatabaseController.getContext().fetch(fetchData)
                
                for result in searchResults as! [Transaction] {
                    DatabaseController.getContext().delete(result)
                }
                DatabaseController.saveContext()
            }
            catch {
                print("Error! \(error)")
            }
        }
    }
    
    public func saveMonth() -> Int {
        
        let dateFormatter = DateFormatter()
        let TZ:Int = vcIncome.fetchValue(key: "TZ") == String() ? 0 : Int(vcIncome.fetchValue(key: "TZ"))!
        
        // temporary seconds-from-GMT because will be different for different timezones
        dateFormatter.timeZone   = TimeZone.init(secondsFromGMT: TZ)
        dateFormatter.dateFormat = "MM"
        
        let now            = NSDate()
        let answer :String = dateFormatter.string(from: now as Date)
        let number :Int    = Int(answer)!
        
        return number
    }
    
    func fetchEnvelopeData() {
        
        var found:Bool = false
        let fetchData = NSFetchRequest<NSFetchRequestResult>(entityName: "Envelope")
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(fetchData)
            
            for result in searchResults as! [Envelope] {
                print(result)
                arrEnvelope.append(result)
                found = true
            }
        }
        catch {
            print("Envelopes not found! A default one has been created for you.")
        }
        
        if !found {
            let element:Envelope = NSEntityDescription.insertNewObject(forEntityName: String(describing: Envelope.self), into: DatabaseController.getContext()) as! Envelope
            element.name = "Example"
            element.assigned = 0
            arrEnvelope.insert(element, at: 0)
            DatabaseController.saveContext()
        }
    }
    
    func addNewEnvelope(name: String) {
        let fetchData        = NSFetchRequest<NSFetchRequestResult>(entityName: "Envelope")
        var nameExists:Bool  = false
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(fetchData)
            
            for result in searchResults as! [Envelope] {
                if result.name == name {
                    nameExists = true
                }
            }
            if nameExists {
                createAlert(title: "Whoops!", message: "This envelope name already exists.")
            } else {
                let addition:Envelope = NSEntityDescription.insertNewObject(forEntityName: String(describing: Envelope.self), into: DatabaseController.getContext()) as! Envelope
                addition.name         = name
                addition.assigned     = 0
                DatabaseController.saveContext()
                arrEnvelope.append(addition)
            }
        }
        catch {
            print("Error! \(error)")
        }
    }
    
    func deleteEnvelope(envelopeName: String) {
        
        let fetchData = NSFetchRequest<NSFetchRequestResult>(entityName: "Envelope")
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(fetchData)
            
            for result in searchResults as! [Envelope] {
                if result.name == envelopeName {
                    DatabaseController.getContext().delete(result)
                }
            }
            DatabaseController.saveContext()
        }
        catch {
            print("Error! \(error)")
        }
    }
    
    public func promptNewEnvelopeMessage() {
        let alert = UIAlertController(title: "Add New Envelope", message: nil, preferredStyle: UIAlertController.Style.alert)
        
        alert.addTextField(configurationHandler: txtAlertInsertion)
        
        alert.addAction(UIAlertAction(title: "Add", style: UIAlertAction.Style.default, handler: { (action) in
            let newName:String = (self.txtAlertInsertion?.text)!
            self.addNewEnvelope(name: newName)
            self.RefreshData()
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func createAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    public func calcEnvelopeRemainingBal(envelopeName: String) -> Double {
        
        var spent    :Double        = 0
        var assigned :Double        = 0
        let fetchTransactionData    = NSFetchRequest<NSFetchRequestResult>(entityName: "Transaction")
        let fetchEnvelopeData       = NSFetchRequest<NSFetchRequestResult>(entityName: "Envelope")
        
        do {
            let transactionSearchResults = try DatabaseController.getContext().fetch(fetchTransactionData)
            let envelopeSearchResults    = try DatabaseController.getContext().fetch(fetchEnvelopeData)
            
            for result in transactionSearchResults as! [Transaction] {
                if result.envelopeName == envelopeName {
                    spent += result.amount
                }
            }
            
            for result in envelopeSearchResults as! [Envelope] {
                if result.name == envelopeName {
                    assigned = result.assigned
                }
            }
        }
        catch {
            print("Error! \(error)")
        }
        return round(100*Double(assigned - spent))/100
    }
}

