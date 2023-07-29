//
//  Core_Data_BasicsApp.swift
//  Core_Data_Basics
//
//  Created by Joao Nascimento on 29.7.2023.
//

import SwiftUI

@main
struct Core_Data_BasicsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
