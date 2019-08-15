//
//  Original+CoreDataProperties.swift
//  BudgetThis
//
//  Created by admin on 15/08/2019.
//  Copyright © 2019 Josh_Dog101. All rights reserved.
//
//

import Foundation
import CoreData


extension Original {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Original> {
        return NSFetchRequest<Original>(entityName: "Original")
    }

    @NSManaged public var amount: Double
    @NSManaged public var autoNumber: String?
    @NSManaged public var name: String?
    @NSManaged public var percent: Double

}
