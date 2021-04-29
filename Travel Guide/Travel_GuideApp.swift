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
                    //ContentView(location: locations.primary)
                    ListView()
                }.tabItem {
                    Image(systemName: "airplane")
                    Text("Discover")
                }
                .environmentObject(locations)
                
                NavigationView {
                    worldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                .environmentObject(locations)
                
                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "lasso.sparkles")
                    Text("Tips")
                }
                
            }
        }
    }
}
