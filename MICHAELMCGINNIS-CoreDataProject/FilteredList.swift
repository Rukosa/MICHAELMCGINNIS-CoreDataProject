//
//  FilteredList.swift
//  MICHAELMCGINNIS-CoreDataProject
//
//  Created by Michael Mcginnis on 3/30/22.
//

import SwiftUI
import CoreData

struct FilteredList<T: NSManagedObject, Content: View>: View {
    @FetchRequest var fetchRequest: FetchedResults<T>

    // this is our content closure; we'll call this once for each item in the list
    let content: (T) -> Content
    //let predic: String

    var body: some View {
        List(fetchRequest, id: \.self) { singer in
            self.content(singer)
        }
    }
    
    //NSPredicate(format: "%K BEGINSWITH %@", filterKey, filterValue)
    init(predic: Singer.filterType, sortDescript: NSSortDescriptor, filterKey: String, filterValue: String, @ViewBuilder content: @escaping (T) -> Content) {
        var predicate: String{
            switch predic{
            case .beginsWith: return "%K BEGINSWITH %@"
            case .contains: return "%K CONTAINS %@"
            case .endsWith: return "%K ENDSWITH %@"
            }
        }
        _fetchRequest = FetchRequest<T>(sortDescriptors: [sortDescript], predicate: NSPredicate(format: "\(predicate)", filterKey, filterValue))
        self.content = content
        //self.predic = predic
    }
}

/*
struct FilteredList_Previews: PreviewProvider {
    static var previews: some View {
        FilteredList()
    }
}*/
