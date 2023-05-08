//
//  Page1.swift
//  Navigation
//
//  Created by Ifeanyi Onuoha on 08/05/2023.
//

import SwiftUI

struct Page1: View {
    @EnvironmentObject private var router: Router
    let id: Int
    
    var body: some View {
        VStack {
            Button("Page Two") {
                router.push(.page2(id: "20"))
            }
            
            Button("Page Three") {
                router.push(.page3(id: 20.0))
            }
            
            Button("Replace with three") {
                router.pushReplacement(.page3(id: 1.0))
            }
        }
        .navigationTitle("Page One")
    }
}

struct Page1_Previews: PreviewProvider {
    static var previews: some View {
        Page1(id: 1)
            .environmentObject(Router())
    }
}
