//
//  StatementViewController.swift
//  BudgetThis
//
//  Created by Joshua Van Niekerk on 2017/05/04.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit
import CoreData

class StatementViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var myTableView     : UITableView!
    @IBOutlet weak var greenArrow1: UIImageView!
    @IBOutlet weak var greenArrow2: UIImageView!
    @IBOutlet weak var greenArrow3: UIImageView!
    
    var ctrRefreshControl :UIRefreshControl          = UIRefreshControl()
    let vcMainDisp        :MainDisplayViewController = MainDisplayViewController()
    var arrayIndex        :Int                       = 0
    var nameArray                                    = [String()]
    var amountArray                                  = [String()]
    var datesArray                                   = [String()]
    var infoArray                                    = [String()]
    
    @IBAction func thisMonthAction(_ sender: UIButton) {
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
        
        if (greenArrow1.alpha == 1) {
            monthFilter(monthsAgo: 0)
        } else if (greenArrow2.alpha == 1) {
            monthFilter(monthsAgo: 1)
        } else if (greenArrow3.alpha == 1) {
            monthFilter(monthsAgo: 2)
        }
        RefreshData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        ctrRefreshControl.addTarget(self, action: #selector(RefreshData), for: UIControlEvents.valueChanged)
        myTableView.refreshControl = ctrRefreshControl
        
        monthFilter(monthsAgo: 0)
        greenArrow1.alpha = 1
        greenArrow2.alpha = 0
        greenArrow3.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        RefreshData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        arrayIndex = indexPath.row
        performSegue(withIdentifier: "details", sender: self)
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellss", for: indexPath) as! StatementTableViewCell

        cell.transaction.text = nameArray[indexPath.row]
        cell.amounts.text     = amountArray[indexPath.row]
        cell.dates.text       = datesArray[indexPath.row]
        
        cell.transaction.adjustsFontSizeToFitWidth = true
        cell.amounts.adjustsFontSizeToFitWidth     = true
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "details" {
            let vc             = segue.destination as! DetailsViewController
            vc.strDescription  = infoArray[arrayIndex]
            vc.strEnvelopeName = nameArray[arrayIndex]
            vc.strAmount       = amountArray[arrayIndex]
            vc.strDate         = datesArray[arrayIndex]
        }
    }
    
    @objc func RefreshData() {
        myTableView.reloadData()
        ctrRefreshControl.endRefreshing()
    }
    
    public func monthFilter(monthsAgo: Int) {
        
        nameArray   = [String()]
        amountArray = [String()]
        datesArray  = [String()]
        infoArray   = [String()]
        
        let currentMonth     = vcMainDisp.saveMonth()
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
        
        let predicate = NSPredicate(format: "month = %@", strNew)
        let fetchData = NSFetchRequest<NSFetchRequestResult>(entityName: "Transaction")
        fetchData.predicate = predicate
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(fetchData)
            
            for result in searchResults as! [Transaction] {
                nameArray.append(result.envelopeName!)
                amountArray.append(String(result.amount))
                datesArray.append(String(result.timeAndDate!))
                infoArray.append(result.info!)
            }
        }
        catch {
            print("Error! \(error)")
        }
    }
}
