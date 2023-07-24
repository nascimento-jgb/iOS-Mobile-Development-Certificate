//
//  mainView.swift
//  LittleLemonRestaurantReservations
//
//  Created by Joao Nascimento on 23.7.2023.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var model: Model
    @State var tabSelection = 0
    
    var body: some View {
        TabView (selection: $model.tabViewSelectedIndex)
        {
            LocationView()
                .tag(0)
                .tabItem {
                    if !model.displayingReservationForm {
                        Label("Locations", systemImage: "location.north.fill")
                    }
                }
            
            ReservationView()
                .tag(1)
                .tabItem {
                    if !model.displayingReservationForm
                    {
                        Label("Reservation", systemImage: "square.and.pencil")
                    }
                }
            
            ToggleDarkView()
                .tag(2)
                .tabItem{
                    if !model.displayingReservationForm {
                        Label(model.isDarkMode ? "Dark" : "Light", systemImage: model.isDarkMode ? "lightbulb.fill" : "lightbulb")
                    }
                }
        }
        .preferredColorScheme(model.isDarkMode ? .dark : .light)
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environmentObject(Model())
    }
}
