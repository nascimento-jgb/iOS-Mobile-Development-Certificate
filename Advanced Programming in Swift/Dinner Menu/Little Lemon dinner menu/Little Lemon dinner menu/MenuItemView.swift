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
    
    var body: some View {
        NavigationView {
            ScrollView {
                    //First Category - Food
                    VStack(alignment: .leading) {
                        if selectedFilters.foodSelected {
                            Text("Food")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.bottom, 5)
                            
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150), spacing: 16)], spacing: 16) {
                                ForEach(viewModel.foodMenuItems.indices, id: \.self) { index in
                                    MenuItemCardView(item: viewModel.foodMenuItems[index])
                                }
                            }
                            .padding()
                        }
                    }
                    
                    //Second Category - Drink
                    VStack(alignment: .leading) {
                        if selectedFilters.drinkSelected {
                            Text("Drink")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.bottom, 5)
                            
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150), spacing: 16)], spacing: 16) {
                                ForEach(viewModel.drinkMenuItems.indices, id: \.self) { index in
                                    MenuItemCardView(item: viewModel.drinkMenuItems[index])
                                }
                            }
                            .padding()
                        }
                    }
                    
                    //Third Category - Desserts
                    VStack(alignment: .leading) {
                        if selectedFilters.dessertSelected {
                            Text("Dessert")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.bottom, 5)
                            
                            LazyVGrid(columns: [GridItem(.adaptive(minimum: 150), spacing: 16)], spacing: 16) {
                                ForEach(viewModel.dessertMenuItems.indices, id: \.self) { index in
                                    MenuItemCardView(item: viewModel.dessertMenuItems[index])
                                }
                            }
                            .padding()
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
        .onAppear{
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
