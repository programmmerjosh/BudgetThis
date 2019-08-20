//
//  StatementTableViewCell.swift
//  BudgetThis
//
//  Created by admin on 08/07/2017.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import UIKit
import CoreData

class StatementTableViewCell: UITableViewCell {

    @IBOutlet weak var transaction: UILabel!
    @IBOutlet var amounts: UILabel!
    @IBOutlet weak var cellButtonOutlet: UIButton!
    @IBAction func cellButtonAction(_ sender: UIButton) {
    
        var tempName:String = String()
        var tempDate:String = String()
        var tempAmount:String = String()
        
        if (cellButtonOutlet.currentTitle != "")
        {
            tempName = cellButtonOutlet.currentTitle!
            tempDate = dates.text!
            tempAmount = amounts.text!
            
            threewayFilter(fieldName: tempName, date: tempDate, amount: tempAmount)
        }
    }
    @IBOutlet weak var dates: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func threewayFilter(fieldName: String, date: String, amount: String) {
        
        let predicate1 = NSPredicate(format: "fieldName = %@", fieldName)
        let predicate2 = NSPredicate(format: "timeAndDate = %@", date)
        let predicate3 = NSPredicate(format: "amountUsed = %@", amount)
        let predicateCompound = NSCompoundPredicate.init(type: .and, subpredicates: [predicate1,predicate2, predicate3])
        let fetchData = NSFetchRequest<NSFetchRequestResult>(entityName: "FieldTransaction")
        fetchData.predicate = predicateCompound
        
        do {
            let searchResults = try DatabaseController.getContext().fetch(fetchData)
            
            for result in searchResults as! [Transaction] {
//                StatementViewController.global.desc = result.info!
//                StatementViewController.global.cat = result.envelopeName!
//                StatementViewController.global.amount = String(result.amount)
//                StatementViewController.global.date = result.timeAndDate!
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

}
