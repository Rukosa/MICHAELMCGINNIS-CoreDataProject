//
//  Movie+CoreDataClass.swift
//  MICHAELMCGINNIS-CoreDataProject
//
//  Created by Michael Mcginnis on 3/30/22.
//
//

import Foundation
import CoreData

@objc(Movie)
public class Movie: NSManagedObject {
    public var wrappedTitle: String {
        title ?? "Unknown Title"
    }
    public var wrappedDirector: String {
        director ?? "Unknown Director"
    }
}
