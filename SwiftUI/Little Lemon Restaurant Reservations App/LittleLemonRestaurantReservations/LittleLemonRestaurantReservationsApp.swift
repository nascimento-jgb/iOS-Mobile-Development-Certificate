//
//  LittleLemonRestaurantReservationsApp.swift
//  LittleLemonRestaurantReservations
//
//  Created by Joao Nascimento on 23.7.2023.
//

import SwiftUI

@main
struct LittleLemonRestaurantReservationsApp: App {
    
    @AppStorage("isDarkMode") var isDarkMode = false
    @StateObject var model = Model()
    
    var body: some Scene {
        WindowGroup {
            MainView()
            .environmentObject(model)
            .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
