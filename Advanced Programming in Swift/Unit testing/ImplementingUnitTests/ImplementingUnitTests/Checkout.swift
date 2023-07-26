//
//  Checkout.swift
//  ImplementingUnitTests
//
//  Created by Joao Nascimento on 26.7.2023.
//

struct CheckoutItem {
    let name: String
    let price: Int
}

func calculteTotal(items: [CheckoutItem], localTaxPercent: Int) -> Int {
    let itemsTotal = items.reduce(0) {$0 + $1.price}
    let taxAmount = itemsTotal * localTaxPercent / 100
    
    return itemsTotal + taxAmount
}
