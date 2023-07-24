//
//  ContentView.swift
//  LittleLemonRestaurantReservations
//
//  Created by Joao Nascimento on 23.7.2023.
//

import SwiftUI

struct LocationView: View {
    @EnvironmentObject var model: Model
    
    var body: some View {
        VStack {
            LittleLemonLogo()
                .padding(.top, 50)
            
            Text(model.displayingReservationForm ? "Reservation details" : "Select a place")
                .padding([.leading, .trailing], 40)
                .padding([.top, .bottom], 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            
            NavigationView {
                List(model.restaurants, id: \.self) { restaurant in
                    NavigationLink(destination: ReservationForm(restaurant)) { RestaurantView(restaurant)
                    }
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                }
            }
            
            .onDisappear{
                if model.tabBarChanged { return }
                model.displayingReservationForm = true
            }
        
            .frame(maxHeight: .infinity)

            .padding(.top, -10)
            
            .scrollContentBackground(.hidden)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView().environmentObject(Model())
    }
}
