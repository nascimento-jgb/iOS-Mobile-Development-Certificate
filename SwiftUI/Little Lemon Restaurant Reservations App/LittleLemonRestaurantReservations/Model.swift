//
//  Model.swift
//  LittleLemonRestaurantReservations
//
//  Created by Joao Nascimento on 23.7.2023.
//

import Foundation

class Model:ObservableObject {
  let restaurants = [
    RestaurantLocation(neighborhood: "Kallio",
                       address: "Fleminginkatu",
                       phoneNumber: "(358) 555-5555"),
    RestaurantLocation(neighborhood: "Kamppi",
                       address: "Fredrikinkatu",
                       phoneNumber: "(358) 555-5555"),
    RestaurantLocation(neighborhood: "Punavuori",
                       address: "Bulevardi",
                       phoneNumber: "(358) 555-5555"),
    RestaurantLocation(neighborhood: "Eira",
                       address: "Laivurinkatu",
                       phoneNumber: "(358) 555-5555")
  ]
  
  @Published var reservation = Reservation()
  @Published var temporaryReservation = Reservation()
  @Published var displayingReservationForm = false
  
  @Published var followNavitationLink = false
  
  @Published var isDarkMode = false
    
  @Published var displayTabBar = true
  @Published var tabBarChanged = false
  @Published var tabViewSelectedIndex = Int.max {
    didSet {
      tabBarChanged = true
    }
  }
}
