//
//  Travel_GuideApp.swift
//  Travel Guide
//
//  Created by Gokul Nair on 28/04/21.
//

import SwiftUI

@main
struct Travel_GuideApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(location: Location.example)
            }
        }
    }
}
