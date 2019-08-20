//
//  Envelope+CoreDataProperties.swift
//  BudgetThis
//
//  Created by admin on 19/08/2019.
//  Copyright © 2019 Josh_Dog101. All rights reserved.
//
//

import Foundation
import CoreData


extension Envelope {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Envelope> {
        return NSFetchRequest<Envelope>(entityName: "Envelope")
    }

    @NSManaged public var assigned: Double
    @NSManaged public var name: String?

}
