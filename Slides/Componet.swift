//
//  Componet.swift
//  Slides
//
//  Created by Andreas on 1/16/21.
//

import SwiftUI


struct Componet: Identifiable, Codable, Hashable {
    var id: String
    var type: String
    var x: Double
    var y: Double
    var width: Double
    var height: Double
    var text: String
    var font: String
    var foregroundColor: String
    var backgroundColor: String
}
