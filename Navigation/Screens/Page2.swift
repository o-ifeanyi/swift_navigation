//
//  Page2.swift
//  Navigation
//
//  Created by Ifeanyi Onuoha on 08/05/2023.
//

import SwiftUI

struct Page2: View {
    @EnvironmentObject private var router: Router
    let id: String
    
    var body: some View {
        VStack {
            Button("Page One") {
                router.push(.page1(id: 30))
            }
            
            Button("Page Three") {
                router.push(.page3(id: 30.0))
            }
            
            Button("Pop") {
                router.pop()
            }
        }
        .navigationTitle("Page Two")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Pop until home") {
                    router.popUntil { route in
                        return route == .home
                    }
                }
            }
        }
    }
}

struct Page2_Previews: PreviewProvider {
    static var previews: some View {
        Page2(id: "Ok")
            .environmentObject(Router())
    }
}
