//
//  SlideDemo.swift
//  Slides
//
//  Created by Andreas on 1/16/21.
//

import SwiftUI

struct SlideDemo: View {
    @State var deck: Deck
    @State var start = false
    var body: some View {
        if !start {
            TitlePageView(start: $start, title: "Civil Right and Civil Liberties")
            .transition(.slide)
        }
        if start {
            TabView {
                ForEach(deck.slides, id: \.self) { slide in
            
        ZStack {
        VStack {
            TitleView(text: slide.title)
            ForEach(slide.bullets, id: \.self) { bullet in
                BulletTextView(text: bullet.text)
           
            }
            Spacer()
        }
                }
        }
        } .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .transition(.opacity)
        
    }
}

}
