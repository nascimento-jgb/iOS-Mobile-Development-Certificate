//
//  ContentView.swift
//  Flat and Hierarchical navigation
//
//  Created by Joao Nascimento on 22.7.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Exercise 1")
                NavigationLink(destination: SecondView()) {
                    Text("Do something")
                }
            }
            .navigationTitle("Little Lemon")
        }
    }
}

struct SecondView: View {
    var body: some View {
        Text("This is the Second View")
            .navigationTitle("Second View")
    }
}

struct MyTabView: View {
    var body: some View {
        TabView {
            Text("This is a Share View")
                .tabItem {
                    Label("Share", systemImage: "square.and.arrow.up")
                }

            Text("This is Trash View")
                .tabItem {
                    Label("", systemImage: "trash")
                }
        }
    }
}

struct CombinedView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Content", systemImage: "pencil")
                }
            MyTabView()
                .tabItem {
                    Label("Tab", systemImage: "list.bullet")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CombinedView_Previews: PreviewProvider {
    static var previews: some View {
        CombinedView()
    }
}
