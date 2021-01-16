//
//  SlideDemo.swift
//  Slides
//
//  Created by Andreas on 1/16/21.
//

import SwiftUI

struct SlideDemo: View {
    @State var deck: Deck
    @State var currentBullet: Bullet
    @State var start = false
    @Binding var openDeck: Bool
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
                .onAppear() {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    currentBullet = deck.slides[0].bullets[2]
                    }
                }
            ScrollView {
                ScrollViewReader { scrollView in
            ForEach(slide.bullets, id: \.self) { bullet in
                BulletTextView(text: bullet.text)
                    .id(bullet.id)
                    .padding(.vertical)
                    .padding(.vertical)
            }
            .onChange(of: currentBullet, perform: { messages in
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                withAnimation(.easeInOut(duration: 1.5)) {
                    scrollView.scrollTo(currentBullet.id, anchor: .bottom)
                }
                }
            })
                }
            Spacer()
        }
        }
                }
        }
        } .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .transition(.opacity)
           
    }
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    openDeck = false
                }) {
                    Image(systemName: "xmark")
                        .padding()
                        .background(Circle().foregroundColor(.white))
                }
               
            } .padding()
            Spacer()
        } .padding()
}

}
