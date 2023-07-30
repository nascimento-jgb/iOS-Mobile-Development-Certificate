import Foundation
import CoreData


extension Dish {
    
    static func createDishesFrom(menuItems:[MenuItem],
                                 _ context:NSManagedObjectContext) {
        
        for menuItem in menuItems
        {
            let fetchRequest: NSFetchRequest<Dish> = Dish.fetchRequest()
            fetchRequest.predicate = NSPredicate(format: "name == %@", menuItem.title)
            
            do {
                let matchingDishes = try context.fetch(fetchRequest)
                if let existingDish = matchingDishes.first
                {
                    existingDish.price = Float(menuItem.price) ?? 0.0
                } else {
                    let newDish = Dish(context: context)
                    newDish.name = menuItem.title
                    newDish.price = Float(menuItem.price) ?? 0.0
                }
            } catch {
                print("Error fetching dish: \(error).")
            }
            
            do {
                try context.save()
            } catch {
                print("Error saving context: \(error).")
            }
        }
    }
}
