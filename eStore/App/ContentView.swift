//
//  ContentView.swift
//  eStore
//
//  Created by Andira Yunita on 02/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.red)
                Text("Home Page")
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.teal)
                Text("Search Page")
            }
            .tabItem {
                Label("Search", systemImage: "magnifyingglass")
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(.pink)
                Text("Users Page")
            }
            .tabItem {
                Label("Users", systemImage: "person.3.fill")
            }
        }
        .tint(.pink)
    }
}

#Preview {
    ContentView()
}
