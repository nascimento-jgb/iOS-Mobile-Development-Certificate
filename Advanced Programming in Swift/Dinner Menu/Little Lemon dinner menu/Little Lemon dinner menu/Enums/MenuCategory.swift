//
//  MenuCategory.swift
//  Little Lemon dinner menu
//
//  Created by Joao Nascimento on 26.7.2023.
//

import Foundation

enum MenuCategory: String {
    case Food
    case Drink
    case Dessert
}

struct Ingredient {
    var name: String
}

struct MenuItem: Identifiable {
    var id: UUID = UUID()
    var title: String
    var ingredients: [Ingredient]
}

