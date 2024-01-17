//
//  ContentView.swift
//  SG-Motion
//
//  Created by Irham Naufal on 17/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var navigator = AppNavigator()
    
    var body: some View {
        NavigationStack(path: $navigator.routes) {
            VStack(alignment: .leading, spacing: 140, content: {
                VStack(alignment: .leading, spacing: 16, content: {
                    Text("Madang")
                        .font(.system(size: 32, weight: .bold))
                        .foregroundColor(.Default.primary50)
                    
                    Text("Booking a table and food from everywhere.")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.black)
                })
                
                VStack(spacing: 24) {
//                    NavigationLink {
//                        AnotherView()
//                    } label: {
//                        Text("Sign Up")
//                            .foregroundColor(.white)
//                            .frame(maxWidth: .infinity)
//                            .padding(.horizontal, 16)
//                            .padding(.vertical, 12)
//                            .background(Color.Default.primary50)
//                            .clipShape(RoundedRectangle(cornerRadius: 6))
//                    }
                    
                    Button {
                        navigator.navigate(to: .another(navigator))
                    } label: {
                        Text("Sign Up")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 12)
                            .background(Color.Default.primary50)
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                    }
                    
                    Button {
                        navigator.navigate(to: .view3)
                    } label: {
                        Text("Login")
                            .foregroundColor(.Default.primary50)
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 12)
                            .overlay {
                                RoundedRectangle(cornerRadius: 6)
                                    .inset(by: 0.5)
                                    .strokeBorder(Color.Default.primary50, lineWidth: 1)
                            }
                    }
                }
            })
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .background(.white)
            .navigationDestination(for: Route.self) { $0 }
        }
    }
}

#Preview {
    ContentView()
}
