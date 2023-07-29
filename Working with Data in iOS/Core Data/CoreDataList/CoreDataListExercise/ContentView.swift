import SwiftUI
import CoreData

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [],
        animation: .default)
    private var desserts: FetchedResults<Dessert>
        
    var body: some View {
        NavigationView{
            VStack{
                Text("DESSERTS")
                    .font(.title)
                List {
                    ForEach(desserts) { dessert in
                        VStack(alignment:.leading){
                            Text (dessert.name!)
                                .font(.system(size: 16, weight: .bold))

                            HStack{
                                Text (dessert.size!)
                                Spacer()
                                Text("$\(dessert.price, specifier: "%.2f")")
                                    .foregroundColor(.gray)
                                    .font(.callout)
                            }
                        }
                    }
                }
            }
           .onAppear{createDesserts()}
        }
    }
    
    func createDesserts() {
        let profiterole = Dessert(context: viewContext)
            profiterole.name = "Profiterole"
            profiterole.size = "Large"
            profiterole.price = 2.99
        
        let cremeBurlee = Dessert(context: viewContext)
            cremeBurlee.name = "Creme Burlee"
            cremeBurlee.size = "Medium"
            cremeBurlee.price = 3.99
        
        let iceCream = Dessert(context: viewContext)
            iceCream.name = "Ice Cream"
            iceCream.size = "Extra Large"
            iceCream.price = 5.99
        
        let applePie = Dessert(context: viewContext)
            applePie.name = "Apple Pie"
            applePie.size = "Small"
            applePie.price = 2.99
        
        let rizALimperatrice = Dessert(context: viewContext)
            rizALimperatrice.name = "Riz al'imperatrice"
            rizALimperatrice.size = "Small"
            rizALimperatrice.price = 2.99
        
        let cheeseCake = Dessert(context: viewContext)
            cheeseCake.name = "Cheese Cake"
            cheeseCake.size = "Extra Small"
            cheeseCake.price = 4.99
        
        let carrotCake = Dessert(context: viewContext)
            carrotCake.name = "Carrot Cake"
            carrotCake.size = "Standard"
            carrotCake.price = 3.99
        
        let pieceMontee = Dessert(context: viewContext)
            pieceMontee.name = "Piece Montee"
            pieceMontee.size = "Medium"
            pieceMontee.price = 5.99
        
        let eclair = Dessert(context: viewContext)
            eclair.name = "Eclair"
            eclair.size = "Large"
            eclair.price = 3.99
        
        let crepeSuzette = Dessert(context: viewContext)
            crepeSuzette.name = "Crepe Suzette"
            crepeSuzette.size = "Extra Large"
            crepeSuzette.price = 3.99
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
        }
    }



