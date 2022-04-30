//
//  ContentView.swift
//  Bable Cookbook
//
//  Created by Sebastian Cruz on 4/26/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            APIView()
                .tabItem {
                    Label("Recipes",
                          systemImage:
                            "fork.knife")
                }
            
            Blog()
                .tabItem {
                    Label("Reviews",
                          systemImage:
                            "books.vertical.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Babel_CookbookAuth())
    }
}
