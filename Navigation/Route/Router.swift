//
//  Router.swift
//  Navigation
//
//  Created by Ifeanyi Onuoha on 08/05/2023.
//

import SwiftUI

final class Router: ObservableObject {
    @Published var routes = [Route]()
    
    func push(_ screen: Route) {
        routes.append(screen)
    }
    
    func pushReplacement(_ screen: Route) {
        routes.append(screen)
        routes.remove(at: routes.count - 2)
    }
    
    func pop() {
        routes.removeLast()
    }
    
    func pop(to screen: Route) {
        if let index = routes.lastIndex(of: screen) {
            let len = routes.count - 1
            routes.removeLast(len - index)
        }
    }
    
    func popUntil(predicate: (Route) -> Bool) {
        if let last = routes.popLast() {
            guard predicate(last) else {
                popUntil(predicate: predicate)
                return
            }
        }
    }
    
    func reset() {
        routes = []
    }
}
