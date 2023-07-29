//
//  ContentView.swift
//  Reading and Writing Data
//
//  Created by Joao Nascimento on 29.7.2023.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    var body: some View {
        @FetchRequest(
            sortDescriptors: [],
            animation: .default)
        
        private var dishes: FetchedResults<Dish>
        oneDish.customer = [oneCustomer]

        let newDish = Dish(context: viewContext)
            newDish.name = "Apple Pie"
            newDish.size = "Extra Large"
            newDish.price = 10

        let newLocation = Location(context: viewContext)
            newLocation.name = "9000 Example Road"
            newLocation.name = "(212) 555 1234"
        
    }, label: {
        Text("Run Core Data")
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
