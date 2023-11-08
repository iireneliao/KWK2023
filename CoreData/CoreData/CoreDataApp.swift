//
//  CoreDataApp.swift
//  CoreData
//
//  Created by Irene Liao on 5/11/23.
//

import SwiftUI

@main
struct CoreDataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
