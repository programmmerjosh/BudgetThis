//
//  FieldTransaction+CoreDataProperties.swift
//  BudgetThis
//
//  Created by admin on 15/08/2019.
//  Copyright © 2019 Josh_Dog101. All rights reserved.
//
//

import Foundation
import CoreData


extension FieldTransaction {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FieldTransaction> {
        return NSFetchRequest<FieldTransaction>(entityName: "FieldTransaction")
    }

    @NSManaged public var amountUsed: Double
    @NSManaged public var fieldName: String?
    @NSManaged public var monthCat: Int16
    @NSManaged public var timeAndDate: String?
    @NSManaged public var transactionDesc: String?

}
