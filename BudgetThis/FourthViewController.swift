//
//  FourthViewController.swift
//  BudgetThis
//
//  Created by Joshua Van Niekerk on 2017/05/04.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit
import CoreData

class FourthViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var myTableView: UITableView!
    @IBOutlet weak var greenArrow1: UIImageView!
    @IBOutlet weak var greenArrow2: UIImageView!
    @IBOutlet weak var greenArrow3: UIImageView!
    
    var RefreshControl:UIRefreshControl = UIRefreshControl()
    
    var fieldArray = [String()]
    var amountArray = [String()]
    var datesArray = [String()]
    
    @IBAction func thisMonthAction(_ sender: UIButton) {
        //month filtering is working!!
        monthFilter(monthsAgo: 0)
        RefreshData()
        greenArrow1.alpha = 1
        greenArrow2.alpha = 0
        greenArrow3.alpha = 0
    }
    @IBAction func lastMonthAction(_ sender: UIButton) {
        monthFilter(monthsAgo: 1)
        RefreshData()
        greenArrow1.alpha = 0
        greenArrow2.alpha = 1
        greenArrow3.alpha = 0
    }
    @IBAction func monthBeforeLastAction(_ sender: UIButton) {
        monthFilter(monthsAgo: 2)
        RefreshData()
        greenArrow1.alpha = 0
        greenArrow2.alpha = 0
        greenArrow3.alpha = 1
    }
    @IBAction func refreshButtonAction(_ sender: UIButton) {
        
        if (greenArrow1.alpha == 1)
        {
            monthFilter(monthsAgo: 0)
        }
        else if (greenArrow2.alpha == 1)
        {
            monthFilter(monthsAgo: 1)
        }
        else if (greenArrow3.alpha == 1)
        {
            monthFilter(monthsAgo: 2)
        }
        
        RefreshData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        RefreshControl.addTarget(self, action: #selector(RefreshData), for: UIControlEvents.valueChanged)
        myTableView.refreshControl = RefreshControl
        
        monthFilter(monthsAgo: 0)
        greenArrow1.alpha = 1
        greenArrow2.alpha = 0
        greenArrow3.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return fieldArray.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellss", for: indexPath) as! TableViewCellViewController2

        cell.cellButtonOutlet.setTitle(fieldArray[indexPath.row], for: UIControlState.normal)
        cell.amounts.text = amountArray[indexPath.row]
        cell.dates.text = datesArray[indexPath.row]
        
        cell.cellButtonOutlet.titleLabel?.adjustsFontSizeToFitWidth = true
        cell.amounts.adjustsFontSizeToFitWidth = true
        
        return cell
    }
    
    @objc func RefreshData() {
        myTableView.reloadData()
        RefreshControl.endRefreshing()
    }
    
    public func monthFilter(monthsAgo: Int) {
        
        fieldArray = [String()]
        amountArray = [String()]
        datesArray = [String()]
        
        let currentMonth = saveMonth()
        var filterNumber:Int = currentMonth - monthsAgo
        
        switch filterNumber {
        case (-1):
            filterNumber = 11
        case 0:
            filterNumber = 12
        default:
            filterNumber = currentMonth - monthsAgo
        }
        
        let strNew:String = String(filterNumber)
        
        let predicate = NSPredicate(format: "monthCat = %@", strNew)
        let fetchData = NSFetchRequest<NSFetchRequestResult>(entityName: "FieldTransaction")
        fetchData.predicate = predicate
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(fetchData)
            
            for result in searchResults as! [Transaction] {
                fieldArray.append(result.envelopeName!)
                amountArray.append(String(result.amount))
                datesArray.append(String(result.timeAndDate!))
                global.desc = result.info!
            }
        }
        catch {
            print("Error! \(error)")
        }
    }
    
    public func saveMonth() -> Int {
        
        let dateFormatter = DateFormatter()

        // temporary seconds-from-GMT because will be different for different timezones
        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: 7200)
        dateFormatter.dateFormat = "MM"

        let now = NSDate()
        let answer:String = dateFormatter.string(from: now as Date)
        let number:Int = Int(answer)!
        
        return number
    }
    
    struct global {
        static var desc:String = "n/a"
        static var cat:String = "n/a"
        static var amount:String = "n/a"
        static var date:String = "n/a"
    }
    
    

    

}
