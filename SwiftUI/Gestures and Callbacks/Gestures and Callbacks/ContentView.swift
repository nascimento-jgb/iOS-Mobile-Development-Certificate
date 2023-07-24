//
//  ContentView.swift
//  Gestures and Callbacks
//
//  Created by Joao Nascimento on 22.7.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var flag = false
    
    var body: some View {
        Text("Tap me")
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding(15)
            .background(flag ? Color.green : Color.blue)
            .onTapGesture {
                flag.toggle()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
