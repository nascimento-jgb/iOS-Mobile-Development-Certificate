//
//  ContentView.swift
//  Little Lemon dinner menu
//
//  Created by Joao Nascimento on 26.7.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let selectedFilters = SelectedFilters()
        
        ZStack{
            MenuItemView()
                .environmentObject(selectedFilters)
                .environment(\.colorScheme, .light)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // Create an instance of the SelectedFilters class and set it as an environment object
        let selectedFilters = SelectedFilters()

        return ContentView()
            .environmentObject(selectedFilters) // Provide the environment object
            .environment(\.colorScheme, .light) // Optional: Set the color scheme for the preview
    }
}
