//
//  MenuItem.swift
//  Little Lemon dinner menu
//
//  Created by Joao Nascimento on 26.7.2023.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set }
    var totalPrice: Double { get set }
    var ingredients: [Ingredient] { get set }
}

class MenuItemClass: Identifiable, MenuItemProtocol {
    var id: UUID = UUID()
    var price: Double
    var title: String
    var menuCategory: MenuCategory
    var ordersCount: Int = 0
    var totalPrice: Double = 0.0
    var ingredients: [Ingredient]

    init(price: Double, title: String, menuCategory: MenuCategory, ingredients: [Ingredient]) {
        self.price = price
        self.title = title
        self.menuCategory = menuCategory
        self.ingredients = ingredients
    }
}

