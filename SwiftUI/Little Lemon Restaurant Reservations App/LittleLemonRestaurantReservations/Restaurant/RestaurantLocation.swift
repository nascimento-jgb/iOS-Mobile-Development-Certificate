//
//  RestaurantLocation.swift
//  LittleLemonRestaurantReservations
//
//  Created by Joao Nascimento on 23.7.2023.
//

import Foundation

struct RestaurantLocation:Hashable {
  let neighborhood:String
  let address:String
  let phoneNumber:String
  
  init(neighborhood:String = "",
       address:String = "",
       phoneNumber:String = "") {
    self.neighborhood = neighborhood
    self.address = address
    self.phoneNumber = phoneNumber
  }
}
