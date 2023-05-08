//
//  ContentView.swift
//  Navigation
//
//  Created by Ifeanyi Onuoha on 08/05/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var router: Router
    var body: some View {
        NavigationStack(path: $router.routes) {
            VStack {
                Button("Page One") {
                    router.push(.page1(id: 10))
                }
                
                Button("Page Two") {
                    router.push(.page2(id: "10"))
                }
                
                Button("Page Three") {
                    router.push(.page3(id: 10.0))
                }
            }
            .padding()
            .navigationTitle("Home")
            .navigationDestination(for: Route.self, destination: { $0 })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Router())
    }
}
