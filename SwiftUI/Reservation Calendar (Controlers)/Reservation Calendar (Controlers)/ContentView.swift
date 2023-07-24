//
//  ContentView.swift
//  Reservation Calendar (Controlers)
//
//  Created by Joao Nascimento on 21.7.2023.
//

import SwiftUI

struct ReservationDate: View {
    
    @State var reservationDate = Date()
    
    var body: some View {
        Form{
            HStack{
                DatePicker(
                selection: $reservationDate, in: Date()...,
                displayedComponents: [.date, .hourAndMinute]
                ) {}
                Button(action: {print("do something")}) {
                    HStack {
                        Image(systemName: "arrow.right.circle")
                        Text("Done")
                    }
                }.padding()
            }
            Text("Date is \(reservationDate.formatted(date: .long, time: .complete))")
        }
    }
}

struct ReservationDate_Previews: PreviewProvider {
    static var previews: some View {
        ReservationDate()
    }
}
