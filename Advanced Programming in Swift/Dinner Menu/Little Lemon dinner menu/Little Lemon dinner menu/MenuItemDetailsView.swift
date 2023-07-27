//
//  MenuItemDetailsView.swift
//  Little Lemon dinner menu
//
//  Created by Joao Nascimento on 26.7.2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var item: MenuItemClass

    var body: some View {
        VStack {
            Image("Little Lemon logo")
                .resizable()
                .frame(width: 150, height: 200)
                .padding()

            Text(item.title)
                .bold()
                .font(.title2)
                .foregroundColor(.primary)
                .padding(.bottom, 10)
            
            //Additional information
            Text(String(format: "Price: %.2f", item.price))
            Text("Orders Count: \(item.ordersCount)")
                .padding(.bottom, 10)
            
            Text("Ingredients:")
                .font(.title3)
                .bold()
                .padding(.bottom, 1)
            VStack(spacing: 4){
                ForEach(item.ingredients, id: \.name) { ingredient in
                    Text(ingredient.name)
                }
            }
            Spacer()
        }
        .padding()
        .navigationBarTitle(item.title)
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        
        let sampleMenuItem = MenuItemClass(price: 10.99, title: "Burger", menuCategory: .Food, ordersCount: 6, ingredients: [Ingredient(name: "Beef"), Ingredient(name: "Cheese"), Ingredient(name: "Lettuce"), Ingredient(name: "Tomato"), Ingredient(name: "Onion"), Ingredient(name: "Pickles"), Ingredient(name: "Ketchup"), Ingredient(name: "Mustard")])
        
        return MenuItemDetailsView(item: sampleMenuItem)
    }
}

