//
//  Tips.swift
//  Travel Guide
//
//  Created by Gokul Nair on 29/04/21.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
