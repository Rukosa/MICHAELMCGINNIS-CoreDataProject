//
//  Singer+CoreDataClass.swift
//  MICHAELMCGINNIS-CoreDataProject
//
//  Created by Michael Mcginnis on 3/30/22.
//
//

import Foundation
import CoreData

@objc(Singer)
public class Singer: NSManagedObject {
    enum filterType{
        case beginsWith, contains, endsWith
    }
}
