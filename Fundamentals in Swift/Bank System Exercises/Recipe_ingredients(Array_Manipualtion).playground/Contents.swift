struct Recipe {
    let name: String
    var ingredients: Set<String>
    var steps: [String]
    func printDescription() {
        print("Recipe: \(name)")
        print("Ingredients: \(ingredients)")
        for (index, step) in steps.enumerated() {
            print("\(index + 1). \(step).")
        }
    }
}

let chocolateCookie = Recipe(
    name: "Chocolate cookie",
    ingredients: ["Cocoa Powder", "Chocolate Chip", "Flour"],
    steps: ["First Action", "Second Action", "Third action"]
)

chocolateCookie.printDescription()
