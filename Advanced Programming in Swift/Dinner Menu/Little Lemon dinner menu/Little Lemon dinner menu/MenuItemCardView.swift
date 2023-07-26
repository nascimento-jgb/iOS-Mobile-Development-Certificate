//
//  MenuCardView.swift
//  Little Lemon dinner menu
//
//  Created by Joao Nascimento on 26.7.2023.
//

import SwiftUI

struct MenuItemCardView: View {
    var item: MenuItem

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
        // Create a sample MenuItem for preview
        let sampleMenuItem = MenuItem(title: "Sample Item", ingredients: [Ingredient(name: "Ingredient 1"), Ingredient(name: "Ingredient 2")])
        
        // Pass the sample MenuItem to the MenuItemCardView
        return MenuItemCardView(item: sampleMenuItem)
    }
}

