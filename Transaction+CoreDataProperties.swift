//
//  Transaction+CoreDataProperties.swift
//  BudgetThis
//
//  Created by admin on 19/08/2019.
//  Copyright © 2019 Josh_Dog101. All rights reserved.
//
//

import Foundation
import CoreData


extension Transaction {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Transaction> {
        return NSFetchRequest<Transaction>(entityName: "Transaction")
    }

    @NSManaged public var amount: Double
    @NSManaged public var envelopeName: String?
    @NSManaged public var info: String?
    @NSManaged public var month: Int16
    @NSManaged public var timeAndDate: String?

}
