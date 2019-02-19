//
//  FieldTransaction+CoreDataProperties.swift
//  FineAnce
//
//  Created by admin on 30/07/2017.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import Foundation
import CoreData


extension FieldTransaction {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<FieldTransaction> {
        return NSFetchRequest<FieldTransaction>(entityName: "FieldTransaction")
    }

    @NSManaged public var fieldName: String?
    @NSManaged public var amountUsed: Double
    @NSManaged public var transactionDesc: String?
    @NSManaged public var timeAndDate: String?
    @NSManaged public var monthCat: Int16

}
