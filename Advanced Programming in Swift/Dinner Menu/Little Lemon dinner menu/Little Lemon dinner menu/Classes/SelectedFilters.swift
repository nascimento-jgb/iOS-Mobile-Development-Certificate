//
//  SelectedFilters.swift
//  Little Lemon dinner menu
//
//  Created by Joao Nascimento on 26.7.2023.
//

import Foundation

class SelectedFilters: ObservableObject {
    @Published var foodSelected = true
    @Published var drinkSelected = true
    @Published var dessertSelected = true
    @Published var mostPopularSelected = false
    @Published var priceSelected = false
    @Published var azSelected = false
    
    static let `default` = SelectedFilters()
    
    func getCategories() -> [MenuCategory] {
            var categories: [MenuCategory] = []
            if foodSelected {
                categories.append(.Food)
            }
            if drinkSelected {
                categories.append(.Drink)
            }
            if dessertSelected {
                categories.append(.Dessert)
            }
            return categories
        }

        func getFilter(for category: MenuCategory) -> Bool {
            switch category {
            case .Food:
                return foodSelected
            case .Drink:
                return drinkSelected
            case .Dessert:
                return dessertSelected
            case .All:
                return foodSelected && drinkSelected && dessertSelected
            }
        }
}

