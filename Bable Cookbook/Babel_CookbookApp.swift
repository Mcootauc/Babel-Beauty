//
//  Bable_CookbookApp.swift
//  Bable Cookbook
//
//  Created by Sebastian Cruz on 4/26/22.
//

import SwiftUI

@main
struct Babel_CookbookApp: App {
    // This connects our newfangled SwiftUI app with the UIApplicationDelegate
    // object mentioned in the Firebase documentation.
    @UIApplicationDelegateAdaptor(Babel_CookbookAppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Babel_CookbookAuth())
                .environmentObject(Babel_CookbookArticle())
        }
    }
}
