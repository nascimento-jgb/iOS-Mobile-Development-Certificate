//
//  ContentView.swift
//  Reservations
//
//  Created by Joao Nascimento on 20.7.2023.
//

import SwiftUI

struct ReservationForm: View {
    @State var customerName: String = ""
    
    var body: some View {
        Form {
            TextField("Type Your Name",
                text:$customerName,
                onEditingChanged: { status in
                    print(status)
                    })
            .onSubmit ({
                print("submited")
            })
            .onChange(of: customerName, perform: {newValue in
                print(newValue)
            })
        }
    }
    
}

struct ReservationForm_Previews: PreviewProvider {
    static var previews: some View {
        ReservationForm()
    }
}
