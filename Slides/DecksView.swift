//
//  SlidesView.swift
//  Slides
//
//  Created by Andreas on 1/16/21.
//

import SwiftUI

struct DecksView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
        ]
    @State var decks = [Deck(id: UUID().uuidString, title: "Civil Right and Civil Liberties", slides: [Slide(id: UUID().uuidString,title: "Title", type: "info", bullets: [Bullet(id: UUID().uuidString, text: "Here is an example text to see how things look!", foregroundColor: "black"), Bullet(id: UUID().uuidString, text: "Here is example text to see how things look!", foregroundColor: "black"), Bullet(id: UUID().uuidString, text: "Here is an example text to see how things look!", foregroundColor: "black"), Bullet(id: UUID().uuidString, text: "Here is an example text to see how things look!", foregroundColor: "black")]), Slide(id: UUID().uuidString,title: "Title2", type: "info", bullets: [Bullet(id: UUID().uuidString, text: "Example2", foregroundColor: "black")])]), Deck(id: UUID().uuidString, title: "Civil Right and Civil Liberties", slides: [Slide(id: UUID().uuidString,title: "Title", type: "info", bullets: [Bullet(id: UUID().uuidString, text: "Example", foregroundColor: "black")]), Slide(id: UUID().uuidString,title: "Title2", type: "info", bullets: [Bullet(id: UUID().uuidString, text: "Example2", foregroundColor: "black")])])]
    @State var openDeck = false
    @State var deck = Deck(id: UUID().uuidString, title: "Civil Right and Civil Liberties", slides: [Slide(id: UUID().uuidString,title: "Title", type: "info", bullets: [Bullet(id: UUID().uuidString, text: "Example", foregroundColor: "black")]), Slide(id: UUID().uuidString,title: "Title2", type: "info", bullets: [Bullet(id: UUID().uuidString, text: "Example2", foregroundColor: "black")])])
    var body: some View {
        ZStack {
        VStack {
            HStack {
            Text("Decks")
                .font(Font.custom("OpenSans-Bold", size: 35, relativeTo: .title))
                Spacer()
            } .padding()
            ScrollView {
        LazyVGrid(columns: columns, spacing: 20) {
        ForEach(decks, id: \.self) { deck in
            Button(action: {
                self.deck = deck
                openDeck = true
            }) {
                DeckCard(deck: deck)
                    .padding()
            }
           
        }
    }
            }
            Spacer()
        }
            if openDeck {
                Color(.systemBackground)
                SlideDemo(deck: deck, currentBullet: deck.slides[0].bullets[0], openDeck: $openDeck)
            }
        }
}
}

