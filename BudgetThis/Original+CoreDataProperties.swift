//
//  Original+CoreDataProperties.swift
//  FineAnce
//
//  Created by admin on 23/08/2017.
//  Copyright © 2017 Josh_Dog101. All rights reserved.
//

import Foundation
import CoreData


extension Original {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Original> {
        return NSFetchRequest<Original>(entityName: "Original")
    }

    @NSManaged public var name: String?
    @NSManaged public var amount: Double
    @NSManaged public var percent: Double
    @NSManaged public var autoNumber: String?

}
