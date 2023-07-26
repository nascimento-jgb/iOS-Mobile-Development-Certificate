//
//  SelectedFilters.swift
//  Little Lemon dinner menu
//
//  Created by Joao Nascimento on 26.7.2023.
//

import Foundation

class SelectedFilters: ObservableObject {
    @Published var foodSelected = false
    @Published var drinkSelected = false
    @Published var dessertSelected = false
    @Published var mostPopularSelected = false
    @Published var priceSelected = false
    @Published var azSelected = false
}

