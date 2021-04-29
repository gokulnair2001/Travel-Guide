//
//  ListView.swift
//  Travel Guide
//
//  Created by Gokul Nair on 29/04/21.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var locations: Locations
    let loc: [Location]
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        loc = try! JSONDecoder().decode([Location].self, from: data)
    }
    
    var body: some View {
       
            List(loc, id: \.name) {
                loca in
                NavigationLink(
                    destination: ContentView(location: loca)){
                Text(loca.name)
            }
        }
            .navigationTitle("Travelouge")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
