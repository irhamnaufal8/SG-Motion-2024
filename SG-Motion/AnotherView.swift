//
//  AnotherView.swift
//  SG-Motion
//
//  Created by Irham Naufal on 17/01/24.
//

import SwiftUI

struct AnotherView: View {
    
    @ObservedObject var navigator: AppNavigator
    
    var body: some View {
        Button {
            navigator.back()
        } label: {
            Text("Back back")
        }
    }
}

#Preview {
    AnotherView(navigator: .init())
}
