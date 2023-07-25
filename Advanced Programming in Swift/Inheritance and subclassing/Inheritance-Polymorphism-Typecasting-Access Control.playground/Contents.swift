class Dish {
    private let ingredients: [String]
    private let name: String
    
    init(name: String, ingredients: [String]) {
        self.name = name
        self.ingredients = ingredients
    }
    
    func printInfo () {
        print(name)
        print(ingredients)
    }
}

final class ApetizerDish: Dish {
    override func printInfo() {
        print("Apetizer:")
        super.printInfo()
    }
}

final class MainDish: Dish {
    override func printInfo() {
        print("Main dish:")
        super.printInfo()
    }
}

let dish1 = Dish(name: "Pasta", ingredients: ["Tomatoes", "Basil", "Garlic", "Olive Oil"])
dish1.printInfo()

for _ in 0..<5 {
    var randomNumber = Int.random(in: 0...1)
    let dish: Dish
    
    if randomNumber == 0 {
        dish = ApetizerDish(name: "Margherita Flatbread", ingredients: ["Margherita", "Flatbread"])
    } else {
        dish = MainDish(name: "Super Spagghetti", ingredients: ["Spaghetti", "Tomato Sauce"])
    }
    
    if let appetizerDish = dish as? ApetizerDish {
        appetizerDish.printInfo()
    }
    if let mainDish = dish as? MainDish {
        mainDish.printInfo()
    }
}

