//
//  Candy+CoreDataClass.swift
//  MICHAELMCGINNIS-CoreDataProject
//
//  Created by Michael Mcginnis on 3/30/22.
//
//

import Foundation
import CoreData

@objc(Candy)
public class Candy: NSManagedObject {
    public var wrappedName: String {
        name ?? "Unknown Candy"
    }
}
