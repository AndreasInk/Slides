//
//  BackAnimation.swift
//  Slides
//
//  Created by Andreas on 1/16/21.
//

import SwiftUI

struct BackAnimation: View {
    @State var r1 = CGFloat(-100)
    @State var r2 = CGFloat(100)
    @State var r3 = CGFloat(200)
    @State var r4 = CGFloat(300)
    @State var r5 = CGFloat(600)
 
    var body: some View {
        GeometryReader { geo in
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("purple"), Color("pink")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            Image("1")
                .resizable()
                .frame(width: geo.size.width/1.5, height: geo.size.width/1.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: r1, y: r2)
                .opacity(0.5)
            Image("5")
                .resizable()
                .frame(width: geo.size.width, height: geo.size.width, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: r1, y: r2)
            Image("2")
                .resizable()
                .frame(width: geo.size.width/1.3, height: geo.size.width/1.3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: r2, y: r3)
            Image("1")
                .resizable()
                .frame(width: geo.size.width/1.1, height: geo.size.width/1.1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: r2, y: r2)
                .opacity(0.5)
            Image("3")
                .offset(x: r4, y: r3)
            Image("4")
                .resizable()
                .frame(width:geo.size.width, height: geo.size.width, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: r3, y: r2)
                .opacity(0.5)
            Image("3")
                .resizable()
                .frame(width: geo.size.width/1.5, height: geo.size.width/1.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: r3, y: r4)
            Image("5")
                .offset(x: r5, y: r1)
                .onAppear() {
                    let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
                        withAnimation(.easeIn(duration: 1.0)) {
                           
                    r1 = CGFloat.random(in: CGFloat(-geo.size.width)...CGFloat(geo.size.width))
                        r2 = CGFloat.random(in: CGFloat(-geo.size.width)...CGFloat(geo.size.width))
                        r3 = CGFloat.random(in: CGFloat(-geo.size.width)...CGFloat(geo.size.width))
                        r4 = CGFloat.random(in: CGFloat(-geo.size.width)...CGFloat(geo.size.width))
                        r5 = CGFloat.random(in: CGFloat(-geo.size.width)...CGFloat(geo.size.width))
                    }
                }
                }
        }
    } 
    } 
}

struct BackAnimation_Previews: PreviewProvider {
    static var previews: some View {
        BackAnimation()
    }
}
