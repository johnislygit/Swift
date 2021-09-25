//
//  Table.swift
//  FinalProject
//
//  Created by John Ly on 12/14/20.
//  Copyright © 2020 John Ly. All rights reserved.
//

import Foundation
import CoreData

@objc(Task)
public class Task : NSManagedObject  {
    @NSManaged public var name: String
    @NSManaged public var priority: Bool
    @NSManaged public var checked: Bool
    
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }
    
    
}
