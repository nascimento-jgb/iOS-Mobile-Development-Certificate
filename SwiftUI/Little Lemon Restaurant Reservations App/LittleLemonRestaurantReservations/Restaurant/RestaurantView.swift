//
//  RestaurantView.swift
//  LittleLemonRestaurantReservations
//
//  Created by Joao Nascimento on 23.7.2023.
//

import SwiftUI

struct RestaurantView: View {
    private var restaurant: RestaurantLocation
    
    init (_ restaurant:RestaurantLocation) {
        self.restaurant = restaurant
    }
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 3)
        {
            Text(restaurant.neighborhood)
                .font(.title2)
            
            HStack
            {
                Text(restaurant.address)
                Text("-")
                Text(restaurant.phoneNumber)
            }
            .font(.caption)
            .foregroundColor(.gray)
        }
    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        
        let restaurantSample = RestaurantLocation(neighborhood: "Kallio", address: "Fleminginkatu", phoneNumber: "358 406673801")
        RestaurantView(restaurantSample)
    }
}
