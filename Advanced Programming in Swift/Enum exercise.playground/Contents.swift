enum Ingredient: String {
    case chicken
    case lettuce
    case onion
    case garlic
    case sauce
}

let ingredient = Ingredient.chicken

switch ingredient {
    case .chicken:
        print("We use \(ingredient.rawValue) that has the richest flavor from all!")
    case .lettuce:
        print("We use \(ingredient.rawValue) that has the richest flavor from all!")
    case .onion:
        print("We use \(ingredient.rawValue) that has the richest flavor from all!")
    case .garlic:
        print("We use \(ingredient.rawValue) that has the richest flavor from all!")
    case .sauce:
        print("We use \(ingredient.rawValue) that has the richest flavor from all!")
}

enum RecipeInformation {
    case allergens(information: String)
}

let recipeInformation = RecipeInformation.allergens(information: "peanuts, milk, gluten")

switch recipeInformation {
    case .allergens(let info):
        print("We are not using \(info) in this recipe!")
}
