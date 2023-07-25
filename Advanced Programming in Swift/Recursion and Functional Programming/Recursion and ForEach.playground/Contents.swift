struct Order {
    let price: Int
    let location: String
}

func totalRevenueOf(orders: [Order], location: String) -> Int {
    let ordersAtLocation = orders.filter {$0.location == location}
    print(ordersAtLocation)
    let ordersPrice = ordersAtLocation.map {$0.price}
    print(ordersPrice)
    
    return ordersPrice.reduce(0) {$0 + $1}
}

let orders = [
    Order(price: 24, location: "New York"),
    Order(price: 37, location: "San Francisco"),
    Order(price: 101, location: "New York")
]

let result = totalRevenueOf(orders: orders, location: "New York")
print(result)
