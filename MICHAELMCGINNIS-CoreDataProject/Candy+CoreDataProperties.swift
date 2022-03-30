//
//  Candy+CoreDataProperties.swift
//  MICHAELMCGINNIS-CoreDataProject
//
//  Created by Michael Mcginnis on 3/30/22.
//
//

import Foundation
import CoreData


extension Candy {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Candy> {
        return NSFetchRequest<Candy>(entityName: "Candy")
    }

    @NSManaged public var name: String?
    @NSManaged public var origin: Country?

}

extension Candy : Identifiable {
    
}
