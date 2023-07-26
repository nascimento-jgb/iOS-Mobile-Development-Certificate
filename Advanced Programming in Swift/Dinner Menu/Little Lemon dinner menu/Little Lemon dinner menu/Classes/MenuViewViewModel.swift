//
//  MenuViewViewModel.swift
//  Little Lemon dinner menu
//
//  Created by Joao Nascimento on 26.7.2023.
//

import Foundation

class MenuViewViewModel: ObservableObject {
    @Published  var foodMenuItems: [MenuItem]
    @Published  var drinkMenuItems: [MenuItem]
    @Published  var dessertMenuItems: [MenuItem]
    
    init() {
        foodMenuItems = [
            MenuItem(title: "Burger", ingredients: [Ingredient(name: "Beef"), Ingredient(name: "Cheese"), Ingredient(name: "Lettuce"), Ingredient(name: "Tomato"), Ingredient(name: "Onion"), Ingredient(name: "Pickles"), Ingredient(name: "Ketchup"), Ingredient(name: "Mustard")]),
            MenuItem(title: "Pizza", ingredients: [Ingredient(name: "Dough"), Ingredient(name: "Tomato Sauce"), Ingredient(name: "Cheese"), Ingredient(name: "Pepperoni"), Ingredient(name: "Mushrooms"), Ingredient(name: "Bell Peppers"), Ingredient(name: "Olives")]),
            MenuItem(title: "Spaghetti Carbonara", ingredients: [Ingredient(name: "Spaghetti"), Ingredient(name: "Bacon"), Ingredient(name: "Eggs"), Ingredient(name: "Parmesan Cheese"), Ingredient(name: "Black Pepper")]),
            MenuItem(title: "Caesar Salad", ingredients: [Ingredient(name: "Romaine Lettuce"), Ingredient(name: "Croutons"), Ingredient(name: "Parmesan Cheese"), Ingredient(name: "Caesar Dressing")]),
            MenuItem(title: "Steak", ingredients: [Ingredient(name: "Beef Steak"), Ingredient(name: "Salt"), Ingredient(name: "Black Pepper"), Ingredient(name: "Butter"), Ingredient(name: "Garlic")]),
            MenuItem(title: "Sushi", ingredients: [Ingredient(name: "Sushi Rice"), Ingredient(name: "Nori Seaweed"), Ingredient(name: "Raw Fish"), Ingredient(name: "Cucumber"), Ingredient(name: "Avocado"), Ingredient(name: "Soy Sauce"), Ingredient(name: "Wasabi")]),
            MenuItem(title: "Chicken Sandwich", ingredients: [Ingredient(name: "Chicken Breast"), Ingredient(name: "Lettuce"), Ingredient(name: "Tomato"), Ingredient(name: "Mayonnaise"), Ingredient(name: "Pickles")]),
            MenuItem(title: "Tacos", ingredients: [Ingredient(name: "Tortillas"), Ingredient(name: "Ground Beef"), Ingredient(name: "Lettuce"), Ingredient(name: "Tomato"), Ingredient(name: "Cheese"), Ingredient(name: "Salsa")]),
            MenuItem(title: "Fried Rice", ingredients: [Ingredient(name: "Rice"), Ingredient(name: "Eggs"), Ingredient(name: "Carrots"), Ingredient(name: "Peas"), Ingredient(name: "Onions"), Ingredient(name: "Soy Sauce")]),
            MenuItem(title: "Lasagna", ingredients: [Ingredient(name: "Lasagna Noodles"), Ingredient(name: "Ground Beef"), Ingredient(name: "Tomato Sauce"), Ingredient(name: "Ricotta Cheese"), Ingredient(name: "Mozzarella Cheese")]),
            MenuItem(title: "Chicken Curry", ingredients: [Ingredient(name: "Chicken"), Ingredient(name: "Curry Paste"), Ingredient(name: "Coconut Milk"), Ingredient(name: "Potatoes"), Ingredient(name: "Onion")]),
            MenuItem(title: "Gourmet Mac and Cheese", ingredients: [Ingredient(name: "Macaroni"), Ingredient(name: "Cheddar Cheese"), Ingredient(name: "Gruyere Cheese"), Ingredient(name: "Breadcrumbs")]),
        ]
        
        drinkMenuItems = [
            MenuItem(title: "Cola", ingredients: [Ingredient(name: "Carbonated Water"), Ingredient(name: "Sugar"), Ingredient(name: "Caramel Color")]),
            MenuItem(title: "Orange Juice", ingredients: [Ingredient(name: "Orange"), Ingredient(name: "Water"), Ingredient(name: "Sugar")]),
            MenuItem(title: "Iced Coffee", ingredients: [Ingredient(name: "Coffee"), Ingredient(name: "Milk"), Ingredient(name: "Ice"), Ingredient(name: "Sugar")]),
            MenuItem(title: "Mojito", ingredients: [Ingredient(name: "White Rum"), Ingredient(name: "Mint Leaves"), Ingredient(name: "Lime"), Ingredient(name: "Simple Syrup"), Ingredient(name: "Soda Water")]),
            MenuItem(title: "Lemonade", ingredients: [Ingredient(name: "Lemon Juice"), Ingredient(name: "Water"), Ingredient(name: "Sugar")]),
            MenuItem(title: "Iced Tea", ingredients: [Ingredient(name: "Black Tea"), Ingredient(name: "Ice"), Ingredient(name: "Sugar")]),
            MenuItem(title: "Smoothie", ingredients: [Ingredient(name: "Banana"), Ingredient(name: "Strawberries"), Ingredient(name: "Yogurt"), Ingredient(name: "Honey")]),
            MenuItem(title: "Mango Lassi", ingredients: [Ingredient(name: "Mango"), Ingredient(name: "Yogurt"), Ingredient(name: "Sugar"), Ingredient(name: "Cardamom")]),
        ]
        
        dessertMenuItems = [
            MenuItem(title: "Chocolate Cake", ingredients: [Ingredient(name: "Flour"), Ingredient(name: "Sugar"), Ingredient(name: "Cocoa"), Ingredient(name: "Eggs"), Ingredient(name: "Butter"), Ingredient(name: "Milk")]),
            MenuItem(title: "Ice Cream", ingredients: [Ingredient(name: "Milk"), Ingredient(name: "Sugar"), Ingredient(name: "Vanilla"), Ingredient(name: "Cream")]),
            MenuItem(title: "Apple Pie", ingredients: [Ingredient(name: "Flour"), Ingredient(name: "Sugar"), Ingredient(name: "Butter"), Ingredient(name: "Apples"), Ingredient(name: "Cinnamon")]),
                MenuItem(title: "Brownies", ingredients: [Ingredient(name: "Flour"), Ingredient(name: "Sugar"), Ingredient(name: "Cocoa"), Ingredient(name: "Eggs"), Ingredient(name: "Butter"), Ingredient(name: "Vanilla")]),
            ]
    }
}
