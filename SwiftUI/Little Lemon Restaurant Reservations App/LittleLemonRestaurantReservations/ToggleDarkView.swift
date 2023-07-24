//
//  ToggleDarkView.swift
//  LittleLemonRestaurantReservations
//
//  Created by Joao Nascimento on 23.7.2023.
//

import SwiftUI

struct ToggleDarkView: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
            VStack {
                Text(model.isDarkMode ? "Dark Mode is On" : "Dark Mode is Off")
            }
            .onAppear() {
                model.isDarkMode.toggle()
            }
        }
}

struct ToggleDarkView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleDarkView().environmentObject(Model())
    }
}
