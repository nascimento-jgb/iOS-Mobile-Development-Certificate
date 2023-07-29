//
//  Reading_and_Writing_DataApp.swift
//  Reading and Writing Data
//
//  Created by Joao Nascimento on 29.7.2023.
//

import SwiftUI

@main
struct Reading_and_Writing_DataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
