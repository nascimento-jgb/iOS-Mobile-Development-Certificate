//
//  ImplementingUnitTestsTests.swift
//  ImplementingUnitTestsTests
//
//  Created by Joao Nascimento on 26.7.2023.
//

import XCTest
@testable import ImplementingUnitTests

final class ImplementingUnitTestsTests: XCTestCase {
    func test_calculateTotal_salesTaxTwentyPercent() {
        let items = [
            CheckoutItem(name: "Fish and Chip", price: 625),
            CheckoutItem(name: "Fish", price: 850),
            CheckoutItem(name: "Chip", price: 325),
            CheckoutItem(name: "Other", price: 175)]
        let taxPercentage = 20
        let totalPay = calculteTotal(items: items, localTaxPercent: taxPercentage)
        
        XCTAssertEqual(totalPay, 2370)
    }
}
