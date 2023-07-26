//
//  MenuItemDetailsView.swift
//  Little Lemon dinner menu
//
//  Created by Joao Nascimento on 26.7.2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    var item: MenuItem

    var body: some View {
        VStack {
            Image("Little Lemon logo")
                .resizable()
                .frame(width: 150, height: 200)
                .padding()

            Text(item.title)
                .font(.headline)
                .foregroundColor(.primary)
                .padding(.bottom, 10)
            // Additional information
//            Text("Price: \(item.price)")
//            Text("Orders Count: \(item.ordersCount)")

            Text("Ingredients:")
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
        let mockMenuItem = MenuItem(title: "Item 1", ingredients: [Ingredient(name: "Ingredient 1"), Ingredient(name: "Ingredient 2")
        ])
        return MenuItemDetailsView(item: mockMenuItem)
    }
}

