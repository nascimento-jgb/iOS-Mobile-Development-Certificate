class BankAccount {
    var accountType: String = ""
    
    func welcomeMessage() {
        print("Welcome to your virtual bank system.")
    }
    func onboardClient (numberPadKey: Int) {
        print("What kind of account would you like to open?")
        print("1. Debit account")
        print("2. Crebit account")
        switch numberPadKey {
        case 1:
            accountType = "debit"
        case 2:
            accountType = "credit"
        default:
            print("Invalid input: \(numberPadKey)")
            return
        }
        print("You have created a \(accountType) account.")
    }
}

let customer = BankAccount()
customer.welcomeMessage()
customer.onboardClient(numberPadKey: Int.random(in: 1...5))
