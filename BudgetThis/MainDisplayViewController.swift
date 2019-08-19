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
    
    @IBOutlet var myTableView: UITableView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        RefreshData()
        AppUtility.lockOrientation(.portrait)
        // Or to rotate and lock
        // AppUtility.lockOrientation(.portrait, andRotateTo: .portrait)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Don't forget to reset when view is being removed
        AppUtility.lockOrientation(.all)
    }
    
    // // Remove transactions >= 4 months
    public func deleteOldData() {
        
        let currentMonth = saveMonth()
        
        for i in 1...9
        {
            let monthHistory = (((currentMonth - 1) + i) % 12) + 1
            let strNew:String = String(monthHistory)
            
            let predicate = NSPredicate(format: "monthCat = %@", strNew)
            let fetchData = NSFetchRequest<NSFetchRequestResult>(entityName: "FieldTransaction")
            fetchData.predicate = predicate
            
            do {
                let searchResults = try DatabaseController.getContext().fetch(fetchData)
                
                for result in searchResults as! [Transaction] {
                    DatabaseController.getContext().delete(result)
                }
            }
            catch {
                print("Error! \(error)")
            }
        }
        DatabaseController.saveContext()
    }
    
    public func saveMonth() -> Int {
        
        let dateFormatter = DateFormatter()
        
        // temporary seconds-from-GMT because will be different for different timezones
        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: ThirdViewController.global.myTZ)
        dateFormatter.dateFormat = "MM"
        
        let now = NSDate()
        let answer:String = dateFormatter.string(from: now as Date)
        let number:Int = Int(answer)!
        
        return number
    }
    
    struct AppUtility {
        
        static func lockOrientation(_ orientation: UIInterfaceOrientationMask) {
            
            if let delegate = UIApplication.shared.delegate as? AppDelegate {
                delegate.orientationLock = orientation
            }
        }
        
        /// OPTIONAL Added method to adjust lock and rotate to the desired orientation
        static func lockOrientation(_ orientation: UIInterfaceOrientationMask, andRotateTo rotateOrientation:UIInterfaceOrientation) {
            
            self.lockOrientation(orientation)
            
            UIDevice.current.setValue(rotateOrientation.rawValue, forKey: "orientation")
        }
    }
    
    //   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    
    @IBAction func addEnvelopeAction(_ sender: Any) {
        promptNewEnvelopeMessage()
    }
    
    var arrEnvelope       :[Envelope]       = []
    var ctrRefreshControl :UIRefreshControl = UIRefreshControl()
    var txtAlertInsertion :UITextField?
    var arrayIndex        :Int              = 0
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrEnvelope.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell             = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainDisplayTableViewCell
        let remaining:Double = 0
//        arrEnvelope[indexPath.row].assigned - arrEnvelope[indexPath.row].spent
        let temp:Double      = Double(cell.remaining.text!) != nil ? Double(cell.remaining.text!)! : 0
        
        cell.name.text       = arrEnvelope[indexPath.row].name
        cell.assigned.text   = String(Double(round(100*Double(arrEnvelope[indexPath.row].assigned))/100))
        cell.remaining.text  = String(Double(round(100*Double(remaining))/100))
        
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
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            deleteEnvelope(envelopeName: arrEnvelope[indexPath.row].name!)
            arrEnvelope.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            RefreshData()
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "manage" {
//            let vc             = segue.destination as! ManagementViewController
//            let name           = String(self.arrEnvelope[arrayIndex].name!)
//            let assigned       = Double(self.arrEnvelope[arrayIndex].assigned)
//            vc.strTempName     = name
//            vc.dblTempAssigned = assigned
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate    = self
        myTableView.dataSource  = self
        
        fetchData()
        ctrRefreshControl.addTarget(self, action: #selector(RefreshData), for: UIControlEvents.valueChanged)
        myTableView.refreshControl = ctrRefreshControl
    }
    
    @objc func RefreshData() {
        myTableView.reloadData()
        ctrRefreshControl.endRefreshing()
    }
    
    func fetchData() {
        let fetchData = NSFetchRequest<NSFetchRequestResult>(entityName: "Envelope")
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(fetchData)
            
            for result in searchResults as! [Envelope] {
                print(result)
                arrEnvelope.append(result)
            }
        }
        catch {
            print("Error! \(error)")
        }
    }
    
    func addNewEnvelope(name: String) {
        let fetchData        = NSFetchRequest<NSFetchRequestResult>(entityName: "Envelope")
        var nameExists:Bool  = false
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(fetchData)
            
            for result in searchResults as! [Envelope] {
                nameExists = result.name == name ? true : false
            }
            if nameExists {
                createAlert(title: "Whoops!", message: "This envelope name already exists.")
            } else {
                let addition:Envelope = NSEntityDescription.insertNewObject(forEntityName: String(describing: Envelope.self), into: DatabaseController.getContext()) as! Envelope
                addition.name         = name
                addition.assigned     = 0
//                addition.spent        = 0
                DatabaseController.saveContext()
                arrEnvelope.append(addition)
            }
        }
        catch {
            print("Error! \(error)")
        }
    }
    
    func txtAlertInsertion(textfield: UITextField!) {
        txtAlertInsertion              = textfield
        txtAlertInsertion?.placeholder = "New Envelope Name"
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
        let alert = UIAlertController(title: "Add New Envelope", message: nil, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addTextField(configurationHandler: txtAlertInsertion)
        
        alert.addAction(UIAlertAction(title: "Add", style: UIAlertActionStyle.default, handler: { (action) in
            let newName:String = (self.txtAlertInsertion?.text)!
            self.addNewEnvelope(name: newName)
            self.RefreshData()
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    func createAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
}

