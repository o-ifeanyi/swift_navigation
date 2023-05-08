//
//  Route.swift
//  Navigation
//
//  Created by Ifeanyi Onuoha on 08/05/2023.
//

import SwiftUI

enum Route {
    case home
    case page1(id: Int)
    case page2(id: String)
    case page3(id: Double)
}

extension Route: View {
    var body: some View {
        switch self {
        case .home:
            ContentView()
        case .page1(let id):
            Page1(id: id)
        case .page2(let id):
            Page2(id: id)
        case .page3(let id):
            Page3(id: id)
        }
    }
}

extension Route: Hashable {
    static func == (lhs: Route, rhs: Route) -> Bool {
        return lhs.compareString == rhs.compareString
    }
    
    var compareString: String {
        switch self {
        case .home:
            return "home"
        case .page1:
            return "page 1"
        case .page2:
            return "page 2"
        case .page3:
            return "page 3"
        }
    }
}
