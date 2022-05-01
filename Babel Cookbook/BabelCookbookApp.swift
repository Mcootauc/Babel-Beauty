//
//  BabelCookbookApp.swift
//  Babel Cookbook
//
//  Created by Sebastian Cruz on 4/30/22.
//

import SwiftUI

@main
struct BabelCookbookApp: App {
    // This connects our newfangled SwiftUI app with the UIApplicationDelegate
    // object mentioned in the Firebase documentation.
    @UIApplicationDelegateAdaptor(BabelCookbookAppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(BabelCookbookAuth())
                .environmentObject(BabelCookbookArticle())
        }
    }
}
