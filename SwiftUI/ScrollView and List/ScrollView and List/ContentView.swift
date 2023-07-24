//
//  ContentView.swift
//  ScrollView and List
//
//  Created by Joao Nascimento on 22.7.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject private var model = Model()
    
    var body: some View {
        VStack {
            List {
                ForEach(model.meals) { item in
                    Text(item.name)
                }
            }
        }
    }
}

struct Item: Identifiable {
    let id = UUID()
    let name: String
}

class Model: ObservableObject {
    @Published var meals: [Item] = menuItems()
    
    static func menuItems() -> [Item] {
        return [
            Item(name: "Lasagna"),
            Item(name: "Fettucini Alfredo"),
            Item(name: "Spaghetti"),
            Item(name: "Avocado Toast"),
            Item(name: "Tortellini"),
            Item(name: "Pizza"),
        ]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
