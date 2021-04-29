//
//  Location.swift
//  Travel Guide
//
//  Created by Gokul Nair on 28/04/21.
//

import Foundation

struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    static let example = Location(id: 1, name: "Taj Mahal", country: "India", description: "Made by Shahjahan", more: "For his wife", latitude: 89.00, longitude: 88.09, heroPicture: "smokies", advisory: "beware of monkeys!")
}
