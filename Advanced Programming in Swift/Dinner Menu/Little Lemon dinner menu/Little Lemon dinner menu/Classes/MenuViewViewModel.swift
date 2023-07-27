//
//  MenuViewViewModel.swift
//  Little Lemon dinner menu
//
//  Created by Joao Nascimento on 26.7.2023.
//

import Foundation
import SwiftUI

class MenuViewViewModel: ObservableObject {
    @Published var categoryFilter: MenuCategory = .All
    @Published  var foodMenuItems: [MenuItemClass]
    @Published  var drinkMenuItems: [MenuItemClass]
    @Published  var dessertMenuItems: [MenuItemClass]
                var selectedFilters: SelectedFilters!
    
    @Published var filteredFoodMenuItems: [MenuItemClass] = []
    @Published var filteredDrinkMenuItems: [MenuItemClass] = []
    @Published var filteredDessertMenuItems: [MenuItemClass] = []
        
    init(selectedFilters: SelectedFilters) {
        self.selectedFilters = selectedFilters
        
        foodMenuItems = [
            MenuItemClass(price: 10.99, title: "Burger", menuCategory: .Food, ordersCount: 5, ingredients: [Ingredient(name: "Beef"), Ingredient(name: "Cheese"), Ingredient(name: "Lettuce"), Ingredient(name: "Tomato"), Ingredient(name: "Onion"), Ingredient(name: "Pickles"), Ingredient(name: "Ketchup"), Ingredient(name: "Mustard")]),
            MenuItemClass(price: 12.99, title: "Pizza", menuCategory: .Food, ordersCount: 8, ingredients: [Ingredient(name: "Dough"), Ingredient(name: "Tomato Sauce"), Ingredient(name: "Cheese"), Ingredient(name: "Pepperoni"), Ingredient(name: "Mushrooms"), Ingredient(name: "Bell Peppers"), Ingredient(name: "Olives")]),
            MenuItemClass(price: 8.99, title: "Spaghetti Carbonara", menuCategory: .Food, ordersCount: 3, ingredients: [Ingredient(name: "Spaghetti"), Ingredient(name: "Bacon"), Ingredient(name: "Eggs"), Ingredient(name: "Parmesan Cheese"), Ingredient(name: "Black Pepper")]),
            MenuItemClass(price: 6.99, title: "Caesar Salad", menuCategory: .Food, ordersCount: 2, ingredients: [Ingredient(name: "Romaine Lettuce"), Ingredient(name: "Croutons"), Ingredient(name: "Parmesan Cheese"), Ingredient(name: "Caesar Dressing")]),
            MenuItemClass(price: 18.99, title: "Steak", menuCategory: .Food, ordersCount: 10, ingredients: [Ingredient(name: "Beef Steak"), Ingredient(name: "Salt"), Ingredient(name: "Black Pepper"), Ingredient(name: "Butter"), Ingredient(name: "Garlic")]),
            MenuItemClass(price: 14.99, title: "Sushi", menuCategory: .Food, ordersCount: 6, ingredients: [Ingredient(name: "Sushi Rice"), Ingredient(name: "Nori Seaweed"), Ingredient(name: "Raw Fish"), Ingredient(name: "Cucumber"), Ingredient(name: "Avocado"), Ingredient(name: "Soy Sauce"), Ingredient(name: "Wasabi")]),
            MenuItemClass(price: 9.99, title: "Chicken Sandwich", menuCategory: .Food, ordersCount: 4, ingredients: [Ingredient(name: "Chicken Breast"), Ingredient(name: "Lettuce"), Ingredient(name: "Tomato"), Ingredient(name: "Mayonnaise"), Ingredient(name: "Pickles")]),
            MenuItemClass(price: 11.99, title: "Tacos", menuCategory: .Food, ordersCount: 7, ingredients: [Ingredient(name: "Tortillas"), Ingredient(name: "Ground Beef"), Ingredient(name: "Lettuce"), Ingredient(name: "Tomato"), Ingredient(name: "Cheese"), Ingredient(name: "Salsa")]),
            MenuItemClass(price: 7.99, title: "Fried Rice", menuCategory: .Food, ordersCount: 2, ingredients: [Ingredient(name: "Rice"), Ingredient(name: "Eggs"), Ingredient(name: "Carrots"), Ingredient(name: "Peas"), Ingredient(name: "Onions"), Ingredient(name: "Soy Sauce")]),
            MenuItemClass(price: 15.99, title: "Lasagna", menuCategory: .Food, ordersCount: 9, ingredients: [Ingredient(name: "Lasagna Noodles"), Ingredient(name: "Ground Beef"), Ingredient(name: "Tomato Sauce"), Ingredient(name: "Ricotta Cheese"), Ingredient(name: "Mozzarella Cheese")]),
            MenuItemClass(price: 12.99, title: "Chicken Curry", menuCategory: .Food, ordersCount: 5, ingredients: [Ingredient(name: "Chicken"), Ingredient(name: "Curry Paste"), Ingredient(name: "Coconut Milk"), Ingredient(name: "Potatoes"), Ingredient(name: "Onion")]),
            MenuItemClass(price: 13.99, title: "Gourmet Mac and Cheese", menuCategory: .Food, ordersCount: 3, ingredients: [Ingredient(name: "Macaroni"), Ingredient(name: "Cheddar Cheese"), Ingredient(name: "Gruyere Cheese"), Ingredient(name: "Breadcrumbs")])
        ]
        
        drinkMenuItems = [
            MenuItemClass(price: 1.99, title: "Cola", menuCategory: .Drink, ordersCount: 10, ingredients: [Ingredient(name: "Carbonated Water"), Ingredient(name: "Sugar"), Ingredient(name: "Caramel Color")]),
            MenuItemClass(price: 2.49, title: "Orange Juice", menuCategory: .Drink, ordersCount: 5, ingredients: [Ingredient(name: "Orange"), Ingredient(name: "Water"), Ingredient(name: "Sugar")]),
            MenuItemClass(price: 3.29, title: "Iced Coffee", menuCategory: .Drink, ordersCount: 8, ingredients: [Ingredient(name: "Coffee"), Ingredient(name: "Milk"), Ingredient(name: "Ice"), Ingredient(name: "Sugar")]),
            MenuItemClass(price: 4.99, title: "Mojito", menuCategory: .Drink, ordersCount: 3, ingredients: [Ingredient(name: "White Rum"), Ingredient(name: "Mint Leaves"), Ingredient(name: "Lime"), Ingredient(name: "Simple Syrup"), Ingredient(name: "Soda Water")]),
            MenuItemClass(price: 1.79, title: "Lemonade", menuCategory: .Drink, ordersCount: 7, ingredients: [Ingredient(name: "Lemon Juice"), Ingredient(name: "Water"), Ingredient(name: "Sugar")]),
            MenuItemClass(price: 2.29, title: "Iced Tea", menuCategory: .Drink, ordersCount: 6, ingredients: [Ingredient(name: "Black Tea"), Ingredient(name: "Ice"), Ingredient(name: "Sugar")]),
            MenuItemClass(price: 3.99, title: "Smoothie", menuCategory: .Drink, ordersCount: 4, ingredients: [Ingredient(name: "Banana"), Ingredient(name: "Strawberries"), Ingredient(name: "Yogurt"), Ingredient(name: "Honey")]),
            MenuItemClass(price: 2.99, title: "Mango Lassi", menuCategory: .Drink, ordersCount: 9, ingredients: [Ingredient(name: "Mango"), Ingredient(name: "Yogurt"), Ingredient(name: "Sugar"), Ingredient(name: "Cardamom")])
        ]

        dessertMenuItems = [
            MenuItemClass(price: 5.99, title: "Chocolate Cake", menuCategory: .Dessert, ordersCount: 15, ingredients: [Ingredient(name: "Flour"), Ingredient(name: "Sugar"), Ingredient(name: "Cocoa"), Ingredient(name: "Eggs"), Ingredient(name: "Butter"), Ingredient(name: "Milk")]),
            MenuItemClass(price: 3.49, title: "Ice Cream", menuCategory: .Dessert, ordersCount: 12, ingredients: [Ingredient(name: "Milk"), Ingredient(name: "Sugar"), Ingredient(name: "Vanilla"), Ingredient(name: "Cream")]),
            MenuItemClass(price: 4.99, title: "Apple Pie", menuCategory: .Dessert, ordersCount: 9, ingredients: [Ingredient(name: "Flour"), Ingredient(name: "Sugar"), Ingredient(name: "Butter"), Ingredient(name: "Apples"), Ingredient(name: "Cinnamon")]),
            MenuItemClass(price: 3.99, title: "Brownies", menuCategory: .Dessert, ordersCount: 20, ingredients: [Ingredient(name: "Flour"), Ingredient(name: "Sugar"), Ingredient(name: "Cocoa"), Ingredient(name: "Eggs"), Ingredient(name: "Butter"), Ingredient(name: "Vanilla")]),
        ]

    }
    
    init() {
        foodMenuItems = [
            MenuItemClass(price: 10.99, title: "Burger", menuCategory: .Food, ordersCount: 5, ingredients: [Ingredient(name: "Beef"), Ingredient(name: "Cheese"), Ingredient(name: "Lettuce"), Ingredient(name: "Tomato"), Ingredient(name: "Onion"), Ingredient(name: "Pickles"), Ingredient(name: "Ketchup"), Ingredient(name: "Mustard")]),
            MenuItemClass(price: 12.99, title: "Pizza", menuCategory: .Food, ordersCount: 8, ingredients: [Ingredient(name: "Dough"), Ingredient(name: "Tomato Sauce"), Ingredient(name: "Cheese"), Ingredient(name: "Pepperoni"), Ingredient(name: "Mushrooms"), Ingredient(name: "Bell Peppers"), Ingredient(name: "Olives")]),
            MenuItemClass(price: 8.99, title: "Spaghetti Carbonara", menuCategory: .Food, ordersCount: 3, ingredients: [Ingredient(name: "Spaghetti"), Ingredient(name: "Bacon"), Ingredient(name: "Eggs"), Ingredient(name: "Parmesan Cheese"), Ingredient(name: "Black Pepper")]),
            MenuItemClass(price: 6.99, title: "Caesar Salad", menuCategory: .Food, ordersCount: 2, ingredients: [Ingredient(name: "Romaine Lettuce"), Ingredient(name: "Croutons"), Ingredient(name: "Parmesan Cheese"), Ingredient(name: "Caesar Dressing")]),
            MenuItemClass(price: 18.99, title: "Steak", menuCategory: .Food, ordersCount: 10, ingredients: [Ingredient(name: "Beef Steak"), Ingredient(name: "Salt"), Ingredient(name: "Black Pepper"), Ingredient(name: "Butter"), Ingredient(name: "Garlic")]),
            MenuItemClass(price: 14.99, title: "Sushi", menuCategory: .Food, ordersCount: 6, ingredients: [Ingredient(name: "Sushi Rice"), Ingredient(name: "Nori Seaweed"), Ingredient(name: "Raw Fish"), Ingredient(name: "Cucumber"), Ingredient(name: "Avocado"), Ingredient(name: "Soy Sauce"), Ingredient(name: "Wasabi")]),
            MenuItemClass(price: 9.99, title: "Chicken Sandwich", menuCategory: .Food, ordersCount: 4, ingredients: [Ingredient(name: "Chicken Breast"), Ingredient(name: "Lettuce"), Ingredient(name: "Tomato"), Ingredient(name: "Mayonnaise"), Ingredient(name: "Pickles")]),
            MenuItemClass(price: 11.99, title: "Tacos", menuCategory: .Food, ordersCount: 7, ingredients: [Ingredient(name: "Tortillas"), Ingredient(name: "Ground Beef"), Ingredient(name: "Lettuce"), Ingredient(name: "Tomato"), Ingredient(name: "Cheese"), Ingredient(name: "Salsa")]),
            MenuItemClass(price: 7.99, title: "Fried Rice", menuCategory: .Food, ordersCount: 2, ingredients: [Ingredient(name: "Rice"), Ingredient(name: "Eggs"), Ingredient(name: "Carrots"), Ingredient(name: "Peas"), Ingredient(name: "Onions"), Ingredient(name: "Soy Sauce")]),
            MenuItemClass(price: 15.99, title: "Lasagna", menuCategory: .Food, ordersCount: 9, ingredients: [Ingredient(name: "Lasagna Noodles"), Ingredient(name: "Ground Beef"), Ingredient(name: "Tomato Sauce"), Ingredient(name: "Ricotta Cheese"), Ingredient(name: "Mozzarella Cheese")]),
            MenuItemClass(price: 12.99, title: "Chicken Curry", menuCategory: .Food, ordersCount: 5, ingredients: [Ingredient(name: "Chicken"), Ingredient(name: "Curry Paste"), Ingredient(name: "Coconut Milk"), Ingredient(name: "Potatoes"), Ingredient(name: "Onion")]),
            MenuItemClass(price: 13.99, title: "Gourmet Mac and Cheese", menuCategory: .Food, ordersCount: 3, ingredients: [Ingredient(name: "Macaroni"), Ingredient(name: "Cheddar Cheese"), Ingredient(name: "Gruyere Cheese"), Ingredient(name: "Breadcrumbs")])
        ]
        
        drinkMenuItems = [
            MenuItemClass(price: 1.99, title: "Cola", menuCategory: .Drink, ordersCount: 10, ingredients: [Ingredient(name: "Carbonated Water"), Ingredient(name: "Sugar"), Ingredient(name: "Caramel Color")]),
            MenuItemClass(price: 2.49, title: "Orange Juice", menuCategory: .Drink, ordersCount: 5, ingredients: [Ingredient(name: "Orange"), Ingredient(name: "Water"), Ingredient(name: "Sugar")]),
            MenuItemClass(price: 3.29, title: "Iced Coffee", menuCategory: .Drink, ordersCount: 8, ingredients: [Ingredient(name: "Coffee"), Ingredient(name: "Milk"), Ingredient(name: "Ice"), Ingredient(name: "Sugar")]),
            MenuItemClass(price: 4.99, title: "Mojito", menuCategory: .Drink, ordersCount: 3, ingredients: [Ingredient(name: "White Rum"), Ingredient(name: "Mint Leaves"), Ingredient(name: "Lime"), Ingredient(name: "Simple Syrup"), Ingredient(name: "Soda Water")]),
            MenuItemClass(price: 1.79, title: "Lemonade", menuCategory: .Drink, ordersCount: 7, ingredients: [Ingredient(name: "Lemon Juice"), Ingredient(name: "Water"), Ingredient(name: "Sugar")]),
            MenuItemClass(price: 2.29, title: "Iced Tea", menuCategory: .Drink, ordersCount: 6, ingredients: [Ingredient(name: "Black Tea"), Ingredient(name: "Ice"), Ingredient(name: "Sugar")]),
            MenuItemClass(price: 3.99, title: "Smoothie", menuCategory: .Drink, ordersCount: 4, ingredients: [Ingredient(name: "Banana"), Ingredient(name: "Strawberries"), Ingredient(name: "Yogurt"), Ingredient(name: "Honey")]),
            MenuItemClass(price: 2.99, title: "Mango Lassi", menuCategory: .Drink, ordersCount: 9, ingredients: [Ingredient(name: "Mango"), Ingredient(name: "Yogurt"), Ingredient(name: "Sugar"), Ingredient(name: "Cardamom")])
        ]

        dessertMenuItems = [
            MenuItemClass(price: 5.99, title: "Chocolate Cake", menuCategory: .Dessert, ordersCount: 15, ingredients: [Ingredient(name: "Flour"), Ingredient(name: "Sugar"), Ingredient(name: "Cocoa"), Ingredient(name: "Eggs"), Ingredient(name: "Butter"), Ingredient(name: "Milk")]),
            MenuItemClass(price: 3.49, title: "Ice Cream", menuCategory: .Dessert, ordersCount: 12, ingredients: [Ingredient(name: "Milk"), Ingredient(name: "Sugar"), Ingredient(name: "Vanilla"), Ingredient(name: "Cream")]),
            MenuItemClass(price: 4.99, title: "Apple Pie", menuCategory: .Dessert, ordersCount: 9, ingredients: [Ingredient(name: "Flour"), Ingredient(name: "Sugar"), Ingredient(name: "Butter"), Ingredient(name: "Apples"), Ingredient(name: "Cinnamon")]),
            MenuItemClass(price: 3.99, title: "Brownies", menuCategory: .Dessert, ordersCount: 20, ingredients: [Ingredient(name: "Flour"), Ingredient(name: "Sugar"), Ingredient(name: "Cocoa"), Ingredient(name: "Eggs"), Ingredient(name: "Butter"), Ingredient(name: "Vanilla")]),
        ]
    }
    
    var filteredItems: [MenuItemClass] {
       switch categoryFilter {
       case .Food:
         return foodMenuItems
       case .Drink:
         return drinkMenuItems
       case .Dessert:
         return dessertMenuItems
       case .All:
         return foodMenuItems + drinkMenuItems + dessertMenuItems
       }
     }
}
