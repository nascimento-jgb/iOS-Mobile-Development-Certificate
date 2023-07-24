//
//  ContentView.swift
//  Lemon App View Exercise
//
//  Created by Joao Nascimento on 21.7.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView{
            VStack{
                ZStack {
                    HStack(spacing: 8){
                        Text("Demo").scaledToFit().frame(width: 100, height: 100, alignment: .center)
                        
                        VStack(spacing: 10) {
                            Text("Little Lemon").font(.title)
                            Text("Tomato Tortellini, Bottarga and Carbonara").font(.title3).multilineTextAlignment(.center)
                        }
                        .padding()
                    }
                    .padding()
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
