//
//  AppNavigator.swift
//  SG-Motion
//
//  Created by Irham Naufal on 17/01/24.
//

import SwiftUI

final class AppNavigator: ObservableObject {
    
    @Published var routes: [Route] = []
    
    func navigate(to view: Route) {
        routes.append(view)
    }
    
    func back() {
        _ = routes.popLast()
    }
    
    func backToRoot() {
        routes.removeAll()
    }
}

enum Route {
    case another(AppNavigator)
    case view3
}

extension Route: View {
    var body: some View {
        switch self {
        case .another(let navigator):
            AnotherView(navigator: navigator)
            
        case .view3:
            Text("View3")
        }
    }
}

extension Route: Hashable {
    static func == (lhs: Route, rhs: Route) -> Bool {
        return true
    }
    
    func hash(into hasher: inout Hasher) {
        
    }
}
