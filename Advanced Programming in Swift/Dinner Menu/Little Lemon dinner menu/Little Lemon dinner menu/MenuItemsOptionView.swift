//
//  MenuItemsOptionView.swift
//  Little Lemon dinner menu
//
//  Created by Joao Nascimento on 26.7.2023.
//

//
//  MenuItemsOptionView.swift
//  Little Lemon dinner menu
//
//  Created by Joao Nascimento on 26.7.2023.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @EnvironmentObject private var selectedFilters: SelectedFilters
    @Binding var isOptionViewPresented: Bool

    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Menu")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.bottom, 10)
                    
                    // Selected Categories
                    Text("Selected Categories")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding(.bottom, 5)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Toggle("Food", isOn: $selectedFilters.foodSelected)
                        Toggle("Drink", isOn: $selectedFilters.drinkSelected)
                        Toggle("Dessert", isOn: $selectedFilters.dessertSelected)
                    }
                    .padding(.leading, 20)
                    
                    Divider()
                        .padding(.vertical, 10)
                    
                    // Sort By
                    Text("Sort By")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .padding(.bottom, 5)
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Toggle("Most Popular", isOn: $selectedFilters.mostPopularSelected)
                        Toggle("Price $-$$$", isOn: $selectedFilters.priceSelected)
                        Toggle("A-Z", isOn: $selectedFilters.azSelected)
                    }
                    .padding(.leading, 20)
                    
                    Spacer(minLength: 0)
                }
                .padding()
            }
            .navigationBarItems(trailing: Button("Done") {
                isOptionViewPresented = false // Dismiss the sheet
            })
        }
    }
}


struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        let isOptionViewPresented = Binding.constant(false) // Set the isOptionViewPresented to false

        return MenuItemsOptionView(isOptionViewPresented: isOptionViewPresented)
            .environment(\.colorScheme, .light) // Optional: Set the color scheme for the preview
            .environmentObject(SelectedFilters()) // Provide the environment object
    }
}
