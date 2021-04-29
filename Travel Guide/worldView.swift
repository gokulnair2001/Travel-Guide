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
        Map(coordinateRegion: $region, annotationItems: locations.places) {
            location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                
                NavigationLink(destination: ContentView(location: location)){
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80, height: 40, alignment: .center)
                        .shadow(radius: 3)
                }
            }
        }
        .navigationTitle("Locations")
    }
}

struct worldView_Previews: PreviewProvider {
    static var previews: some View {
        worldView()
    }
}
