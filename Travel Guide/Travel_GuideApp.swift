//
//  Travel_GuideApp.swift
//  Travel Guide
//
//  Created by Gokul Nair on 28/04/21.
//

import SwiftUI

@main
struct Travel_GuideApp: App {
  @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }.tabItem {
                    Image(systemName: "airplane")
                    Text("Discover")
                }
                NavigationView {
                    worldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                .environmentObject(locations)
            }
        }
    }
}
