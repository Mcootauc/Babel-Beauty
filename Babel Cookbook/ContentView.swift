//
//  ContentView.swift
//  Babel Cookbook
//
//  Created by Sebastian Cruz on 4/30/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            APIView()
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
        .colorMultiply(Color("pastelOrange"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(BabelCookbookAuth())
    }
}

