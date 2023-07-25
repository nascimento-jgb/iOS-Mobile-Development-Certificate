import UIKit

class Calculator {
    func divide(x: Double, y: Double) throws -> Double {
        
        if (y == 0) {
            throw CalculatorError.divisionByZero
        }
        return x/y
            
    }
}

enum CalculatorError: Error{
    case divisionByZero
}

let calculator = Calculator()
do {
    let succesfulResult = try calculator.divide(x: 10, y: 3)
    print(String(format: "%.2f", succesfulResult))
    let failedResult = try calculator.divide(x: 10, y: 0)
}
catch CalculatorError.divisionByZero {
    print("Not possible to make division by zero.")
}


