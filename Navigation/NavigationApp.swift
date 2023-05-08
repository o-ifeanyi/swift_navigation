//
//  NavigationApp.swift
//  Navigation
//
//  Created by Ifeanyi Onuoha on 08/05/2023.
//

import SwiftUI

@main
struct NavigationApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Router())
        }
    }
}
