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
    
    var body: some View {
        NavigationView{
            VStack{
                //Menu items content to be added here
                
            }
            .navigationBarTitle("Menu", displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {isOptionViewPresented = true}) {
                Image(systemName: "slider.horizontal.3")
            }
            )
        }
        .sheet(isPresented: $isOptionViewPresented) {
                    // Pass the @Binding only for isOptionViewPresented, directly use @EnvironmentObject for selectedFilters
                    MenuItemsOptionView(isOptionViewPresented: $isOptionViewPresented)
            }
            .environmentObject(selectedFilters) // Provide the environment object
    }
}

struct MenuItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        // Create an instance of the SelectedFilters class and set it as an environment object
//        let selectedFilters = SelectedFilters()
//
//        return MenuItemView()
//            .environmentObject(selectedFilters) // Provide the environment object
//            .environment(\.colorScheme, .light) // Optional: Set the color scheme for the preview
//    }
    static var previews: some View {
            ZStack {
                MenuItemView()
                    .environmentObject(SelectedFilters())
                    .environment(\.colorScheme, .light)
            }
        }
}
