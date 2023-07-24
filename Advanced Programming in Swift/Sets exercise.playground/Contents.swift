let reservationsInPerson: Set<String> = ["000-345-3441", "000-325-3443"]
let reservationsOverPhone: Set<String> = ["000-345-6223", "000-345-7223"]
let reservationsOverInternet: Set<String> = ["000-345-3443", "000-345-5223"]

let inPersonAndOverPhone = reservationsInPerson.union(reservationsOverPhone)
print(inPersonAndOverPhone)

var allPhoneNumbers = inPersonAndOverPhone.union(reservationsOverInternet)
print(allPhoneNumbers)

var confirmationCodes: Set = ["LL3450", "LL3451", "LL3452", "LL3453", "LL3454"]
print("\(allPhoneNumbers.count) - \(confirmationCodes.count)")
confirmationCodes.insert("LL3455")
print("\(allPhoneNumbers.count) - \(confirmationCodes.count)")
allPhoneNumbers.remove("000-345-5223")
confirmationCodes.remove("LL3455")
print("\(allPhoneNumbers.count) - \(confirmationCodes.count)")
