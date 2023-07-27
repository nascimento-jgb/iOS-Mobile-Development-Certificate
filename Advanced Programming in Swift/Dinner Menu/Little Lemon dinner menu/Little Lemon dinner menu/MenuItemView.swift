//
//  MenuItemView.swift
//  Little Lemon dinner menu
//
//  Created by Joao Nascimento on 26.7.2023.
//

import SwiftUI

struct MenuItemView: View {
    @State private var isOptionViewPresented = false
    @EnvironmentObject private var selectedFilters: SelectedFilters
    @ObservedObject private var viewModel = MenuViewViewModel()
    
    // Function to get the filtered items based on the selected category
    private func getFilteredItems(for category: MenuCategory) -> [MenuItemClass] {
          let filteredItems: [MenuItemClass]
        switch category {
        case .Food:
            filteredItems = viewModel.foodMenuItems
        case .Drink:
            filteredItems = viewModel.drinkMenuItems
        case .Dessert:
            filteredItems = viewModel.dessertMenuItems
        case .All:
            filteredItems = viewModel.foodMenuItems + viewModel.drinkMenuItems + viewModel.dessertMenuItems
        }
              
        if selectedFilters.mostPopularSelected {
            return filteredItems.sorted(by: { $0.ordersCount > $1.ordersCount })
        } else if selectedFilters.priceSelected {
            return filteredItems.sorted(by: { $0.price < $1.price })
        } else if selectedFilters.azSelected {
            return filteredItems.sorted(by: { $0.title < $1.title })
        } else {
            return filteredItems
        }
    }
    
    var body: some View {
         NavigationView {
             ScrollView {
                 ForEach(selectedFilters.getCategories(), id: \.self) { category in
                     VStack(alignment: .leading) {
                         if selectedFilters.getFilter(for: category) {
                             Text(category.rawValue)
                                 .font(.title)
                                 .fontWeight(.bold)
                                 .padding(.bottom, 5)

                             LazyVGrid(columns: [GridItem(.adaptive(minimum: 150), spacing: 16)], spacing: 16) {
                                 ForEach(getFilteredItems(for: category), id: \.id) { item in
                                     MenuItemCardView(item: item)
                                 }
                             }
                             .padding()
                         }
                     }
                 }
                 .navigationBarTitle("Menu", displayMode: .inline)
                 .navigationBarItems(trailing: Button(action: { isOptionViewPresented = true }) {
                     Image(systemName: "slider.horizontal.3")
                 })
             }
         }
         .sheet(isPresented: $isOptionViewPresented) {
             MenuItemsOptionView(isOptionViewPresented: $isOptionViewPresented)
         }
         .environmentObject(selectedFilters)
         .onAppear {
             viewModel.selectedFilters = selectedFilters
         }
     }
 }

struct MenuItemView_Previews: PreviewProvider {

    static var previews: some View {
            ZStack {
                MenuItemView()
                    .environmentObject(SelectedFilters())
                    .environment(\.colorScheme, .light)
            }
        }
}
