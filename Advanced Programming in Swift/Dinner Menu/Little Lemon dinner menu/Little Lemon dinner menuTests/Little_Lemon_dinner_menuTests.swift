//
//  Little_Lemon_dinner_menuTests.swift
//  Little Lemon dinner menuTests
//
//  Created by Joao Nascimento on 26.7.2023.
//

import XCTest
@testable import Little_Lemon_dinner_menu

final class MenuItemTests: XCTestCase {

    func testMenuItemTitle() {
        // Arrange
        let title = "Burger"
        let ingredients: [Ingredient] = [Ingredient(name: "Beef"), Ingredient(name: "Cheese")]

        // Act
        let menuItem = MenuItemClass(price: 10.99, title: title, menuCategory: .Food, ordersCount: 7, ingredients: ingredients)

        // Assert
        XCTAssertEqual(menuItem.title, title)
    }

    func testMenuItemIngredients() {
        // Arrange
        let title = "Pizza"
        let ingredients: [Ingredient] = [Ingredient(name: "Dough"), Ingredient(name: "Tomato Sauce"), Ingredient(name: "Cheese")]

        // Act
        let menuItem = MenuItemClass(price: 12.99, title: title, menuCategory: .Food, ordersCount: 8, ingredients: ingredients)

        // Assert
        XCTAssertEqual(menuItem.ingredients, ingredients)
    }
}
