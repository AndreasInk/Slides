//
//  DeckCard.swift
//  Slides
//
//  Created by Andreas on 1/16/21.
//

import SwiftUI

struct DeckCard: View {
    @State var deck: Deck
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("lightGray"))
            Text(deck.title)
                .font(Font.custom("OpenSans-SemiBold", size: 35, relativeTo: .title))
                .padding()
                
        }
    }
}
