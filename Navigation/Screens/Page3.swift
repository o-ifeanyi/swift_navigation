//
//  Page3.swift
//  Navigation
//
//  Created by Ifeanyi Onuoha on 08/05/2023.
//

import SwiftUI

struct Page3: View {
    @EnvironmentObject private var router: Router
    let id: Double
    
    var body: some View {
        VStack {
            Button("Page One") {
                router.push(.page1(id: 40))
            }
            
            Button("Page Two") {
                router.push(.page2(id: "40"))
            }
            
            Button("Pop to One") {
                router.pop(to: .page1(id: 0))
            }
        }
        .navigationTitle("Page Three")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Reset") {
                    router.reset()
                }
            }
        }
    }
}

struct Page3_Previews: PreviewProvider {
    static var previews: some View {
        Page3(id: 2.0)
            .environmentObject(Router())
    }
}
