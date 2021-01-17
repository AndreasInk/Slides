//
//  Question.swift
//  Slides
//
//  Created by Andreas on 1/16/21.
//

import SwiftUI

struct Question: Identifiable, Codable, Hashable {
    var id: String
    var question: String
    var answer: String
    var options: [String]
}
