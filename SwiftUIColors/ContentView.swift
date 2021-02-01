import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("UIColor Constants", destination: UIColorConstants())
                NavigationLink("Hex Colors", destination: HexColor())
                NavigationLink("Random Colors", destination: RandomColorView())
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
