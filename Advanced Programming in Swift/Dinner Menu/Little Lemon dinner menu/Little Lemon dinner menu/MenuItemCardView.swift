//
//  MenuCardView.swift
//  Little Lemon dinner menu
//
//  Created by Joao Nascimento on 26.7.2023.
//

import SwiftUI

struct MenuItemCardView: View {
    var item: MenuItemClass

    var body: some View {
        NavigationLink(destination: MenuItemDetailsView(item: item)) {
            VStack {
                Image("Little Lemon logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()

                Text(item.title)
                    .font(.headline)
                    .foregroundColor(.primary)
            }
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)
        }
    }
}

struct MenuItemCardView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleMenuItem = MenuItemClass(price: 10.99, title: "Burger", menuCategory: .Food, ordersCount: 6, ingredients: [Ingredient(name: "Beef"), Ingredient(name: "Cheese"), Ingredient(name: "Lettuce"), Ingredient(name: "Tomato"), Ingredient(name: "Onion"), Ingredient(name: "Pickles"), Ingredient(name: "Ketchup"), Ingredient(name: "Mustard")])
        
        return MenuItemCardView(item: sampleMenuItem)
    }
}

