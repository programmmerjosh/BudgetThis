//
//  FirstViewController.swift
//  BudgetThis
//
//  Created by Joshua on 2017/03/08.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit
import CoreData

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var temp:Int = 0
    var temp2:Int = 0
    @IBOutlet var myTableView: UITableView!
    var RefreshControl:UIRefreshControl = UIRefreshControl()
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return stR.fields.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCellViewController
        
        cell.first.text = stR.fields[indexPath.row]
        cell.amounts.text = stR.amounts[indexPath.row]
        
        let temp:Double = Double(cell.amounts.text!)!
        
        switch temp {
        case  0:
            cell.amounts.textColor = UIColor.black
        case ..<0:
            cell.amounts.textColor = UIColor.red
        default:
            cell.amounts.textColor = UIColor.green
        }
        
        // Add empty values to totals array
        cell.rightSideAmounts.text = stR.totals[indexPath.row]
        
        cell.first.adjustsFontSizeToFitWidth = true
        cell.amounts.adjustsFontSizeToFitWidth = true
        cell.rightSideAmounts.adjustsFontSizeToFitWidth = true
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        deleteOldData()
        
        // FOR TESTING PURPOSES: CLEAR DATA FROM FIELDTRANSACTIONS
        //deleteALLdataInDatabase()
        
        // FOR TESTING PURPOSES: CLEAR DATA FROM ORIGINAL
        //deleteData()
        
        // Check for first run
        let num = numberOfValuesInDatabase()
        
        switch num {
        case ..<1:
            firstRunAddDataToArray()
            stR.firstRun = true
        default:
            emptyFieldTotals()
            databaseToArrays()
            sortTotalsArray()
            
            var i:Int = 0
            let limit:Int = stR.fields.count
            let month:String = String(saveMonth())
            while (i < limit)
            {
                AddFieldTotalEditAndAddNewValueToDatabase(name: stR.fields[i], month: month)
                i += 1
            }
            sortTotalsArray()
            resetAmountsArray()
            stR.firstRun = false
        }
        
        // Refresh control
        RefreshControl.addTarget(self, action: #selector(RefreshData), for: UIControlEvents.valueChanged)
        myTableView.refreshControl = RefreshControl
    }
    
    @objc func RefreshData() {
        myTableView.reloadData()
        RefreshControl.endRefreshing()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
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
    
    public func firstRunAddDataToArray()
    {
        stR.fields.insert("Spending", at: 0)
        stR.fields.insert("Investments", at: 0)
        stR.fields.insert("Expenses", at: 0)
        stR.amounts.insert("0.0", at: 0)
        stR.amounts.insert("0.0", at: 0)
        stR.amounts.insert("0.0", at: 0)
        stR.percentages.insert("0.0", at: 0)
        stR.percentages.insert("0.0", at: 0)
        stR.percentages.insert("0.0", at: 0)
        stR.totals.insert("0.0", at: 0)
        stR.totals.insert("0.0", at: 0)
        stR.totals.insert("0.0", at: 0)
        stR.fields.remove(at: (stR.fields.count - 1))
        stR.amounts.remove(at: (stR.amounts.count - 1))
        stR.percentages.remove(at: (stR.percentages.count - 1))
        stR.totals.remove(at: (stR.totals.count - 1))
    }
    
    public func numberOfValuesInDatabase() -> Int {
        
        var answer:Int = 0
        let fetchRequest:NSFetchRequest<Original> = Original.fetchRequest()
        do
        {
            let searchResults = try DatabaseController.getContext().fetch(fetchRequest)
            answer = searchResults.count
        }
        catch {
            print("Error! \(error)")
        }
        return answer
    }
    
    // Add data to arrays
    public func databaseToArrays() {
        
        var i:Int = 0
        var stillData:Bool = true
        
        while (i < 30 && stillData == true)
        {
            let predicate = NSPredicate(format: "autoNumber = %@", String(i))
            let retrieve = NSFetchRequest<NSFetchRequestResult>(entityName: "Original")
            retrieve.predicate = predicate
            
            do {
                let searchResults = try DatabaseController.getContext().fetch(retrieve)
                
                for result in searchResults as! [Original] {
                    
                    if (result.autoNumber != "999")
                    {
                        stR.fields.insert(result.name!, at: i)
                        stR.amounts.insert(String(Double(round(100*result.amount)/100)), at: i)
                        stR.percentages.insert(String(result.percent), at: i)
                    }
                    stillData = false
                }
                
                switch stillData {
                case false:
                    stillData = true
                default:
                    stillData = false
                    }
            }
            catch {
                print("Error! \(error)")
            }
            i += 1
        }
        stR.fields.remove(at: stR.fields.count - 1)
        stR.amounts.remove(at: (stR.amounts.count - 1))
        stR.percentages.remove(at: (stR.percentages.count - 1))
    }
    
    // Delete all data from original entity
    public func deleteData() {
        
        let fetchRequest:NSFetchRequest<Original> = Original.fetchRequest()
        do
        {
            let searchResults = try DatabaseController.getContext().fetch(fetchRequest)
            
            for result in searchResults as [Original] {
                DatabaseController.getContext().delete(result)
            }
        }
        catch {
            print("Error! \(error)")
        }
        DatabaseController.saveContext()
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
                
                for result in searchResults as! [FieldTransaction] {
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
    
    struct stR{
        static var amounts = [String()]
        static var fields = [String()]
        static var percentages = [String()]
        static var totals = [String()]
        static var firstRun:Bool = true
        static var lastRunMonth:Int = 0
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
    
    // Clear all data from FieldTransactions
    public func deleteALLdataInDatabase()
    {
        let fetchData = NSFetchRequest<NSFetchRequestResult>(entityName: "FieldTransaction")
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(fetchData)
            
            for result in searchResults as! [FieldTransaction] {
                DatabaseController.getContext().delete(result)
            }
        }
        catch {
            print("Error! \(error)")
        }
        DatabaseController.saveContext()
        
        let fetchNextData = NSFetchRequest<NSFetchRequestResult>(entityName: "FieldTotals")
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(fetchNextData)
            
            for result in searchResults as! [FieldTotals] {
                DatabaseController.getContext().delete(result)
            }
        }
        catch {
            print("Error! \(error)")
        }
        DatabaseController.saveContext()
    }
    
    public func sortTotalsArray()
    {
        FirstViewController.stR.totals = [String()]
        var i:Int = 0
        var x:String = String()
        let fetchData = NSFetchRequest<NSFetchRequestResult>(entityName: "FieldTotals")
        
        while (i < FirstViewController.stR.fields.count)
        {
            x = FirstViewController.stR.fields[i]
            let predicate = NSPredicate(format: "fieldName = %@", x)
            fetchData.predicate = predicate
            
            do {
                let searchResults = try DatabaseController.getContext().fetch(fetchData)
                
                if (searchResults.count > 0)
                {
                    for result in searchResults as! [FieldTotals] {
                        
                        switch FirstViewController.stR.totals[0] {
                        case String():
                            FirstViewController.stR.totals.insert(String(result.totalAmount), at: 0)
                            FirstViewController.stR.totals.remove(at: 1)
                        default:
                            FirstViewController.stR.totals.append(String(result.totalAmount))
                        }
                    }
                }
                else
                {
                    switch FirstViewController.stR.totals[0] {
                    case String():
                        FirstViewController.stR.totals.insert("0.0", at: 0)
                        FirstViewController.stR.totals.remove(at: 1)
                    default:
                        FirstViewController.stR.totals.append("0.0")
                    }
                }
            }
            catch {
                print("Error! \(error)")
            }
            i += 1
        }
    }
    
    public func resetAmountsArray() {
        var i:Int = 0
        let limit:Int = stR.fields.count
        
        while (i < limit)
        {
            let num1:Double = Double(stR.amounts[i])!
            let num2:Double = Double(stR.totals[i])!
            
            stR.amounts[i] =  String(num1 - num2)
            i += 1
        }
    }
    
    public func clearTotalsArray() {
        var i:Int = 0
        let limit = stR.totals.count
        
        while (i < limit)
        {
            stR.totals[i] = "0.0"
            i += 1
        }
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
            
            let ft:FieldTotals = NSEntityDescription.insertNewObject(forEntityName: "FieldTotals", into: DatabaseController.getContext()) as! FieldTotals
            
            ft.fieldName = name
            ft.totalAmount = tempTotalAmount
            
            DatabaseController.saveContext()
        }
    }
    
    public func emptyFieldTotals() {
        
        let currentMonth:String = String(saveMonth())
        let predicate = NSPredicate(format: "monthCat = %@", currentMonth)
        let fetchData = NSFetchRequest<NSFetchRequestResult>(entityName: "FieldTransaction")
        fetchData.predicate = predicate
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(fetchData)
            
            if (searchResults.count < 1)
            {
                let fetchTotalsData = NSFetchRequest<NSFetchRequestResult>(entityName: "FieldTotals")
                
                do {
                    let NextsearchResults = try DatabaseController.getContext().fetch(fetchTotalsData)
                    
                    for result in NextsearchResults as! [FieldTotals] {
                        DatabaseController.getContext().delete(result)
                    }
                }
                catch {
                    print("Error! \(error)")
                }
                DatabaseController.saveContext()
            }
        }
        catch {
            print("Error! \(error)")
        }
    }
}

