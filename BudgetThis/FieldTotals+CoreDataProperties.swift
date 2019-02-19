//
//  FieldTotals+CoreDataProperties.swift
//  FineAnce
//
//  Created by admin on 30/07/2017.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
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
