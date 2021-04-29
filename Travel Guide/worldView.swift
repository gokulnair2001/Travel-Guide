//
//  worldView.swift
//  Travel Guide
//
//  Created by Gokul Nair on 29/04/21.
//

import MapKit
import SwiftUI

struct worldView: View {
    @EnvironmentObject var locations: Locations
     
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 20.5937, longitude: 78.9629), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .navigationTitle("Locations")
    }
}

struct worldView_Previews: PreviewProvider {
    static var previews: some View {
        worldView()
    }
}
