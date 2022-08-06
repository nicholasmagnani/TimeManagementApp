//
//  ContentView.swift
//  EverythingStudentTimeManagement
//
//  Created by Nicholas Magnani on 7/26/22.
//

import SwiftUI



struct ContentView: View {
    @State private var selectedTab = "One"

    var body: some View {
        TabView(selection: $selectedTab) {
            Text("")
                .onTapGesture {
                    selectedTab = "One"
                }
                .tabItem {
                    Label("Agenda", systemImage: "star")
                }
                .tag("One")

            Text("")
                .onTapGesture {
                    selectedTab = "Two"
                }
                .tabItem {
                    Label("Goal Setting", systemImage: "pencil.circle.fill")
                }
                .tag("Two")
            
            Text("")
                .onTapGesture {
                    selectedTab = "Three"
                }
                .tabItem {
                    Label("Productivity Tips", systemImage: "person.badge.clock.fill")
                }
                .tag("Three")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}
