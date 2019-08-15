//
//  FieldTotals+CoreDataProperties.swift
//  BudgetThis
//
//  Created by admin on 15/08/2019.
//  Copyright © 2019 Josh_Dog101. All rights reserved.
//
//

import Foundation
import CoreData


extension FieldTotals {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FieldTotals> {
        return NSFetchRequest<FieldTotals>(entityName: "FieldTotals")
    }

    @NSManaged public var fieldName: String?
    @NSManaged public var totalAmount: Double

}
