import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("Among us!")
                .tabItem {
                    Label("Food Library",
                          systemImage:
                            "books.vertical.fill")
                }
            
            Blog()
                .tabItem {
                    Label("Reviews",
                          systemImage:
                            "fork.knife")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(BareBonesBlogAuth())
    }
}
