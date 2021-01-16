//
//  Slide.swift
//  Slides
//
//  Created by Andreas on 1/16/21.
//

import SwiftUI

struct Deck: Identifiable, Codable, Hashable {
    var id: String
    var title: String
    var slides: [Slide]
    
}


struct Slide: Identifiable, Codable, Hashable {
    var id: String
    var title: String
    var type: String
    var bullets: [Bullet]
    
}

struct Bullet: Identifiable, Codable, Hashable {
    var id: String
    var text: String
    var foregroundColor: String
    
}
