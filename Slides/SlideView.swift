//
//  SlideView.swift
//  Slides
//
//  Created by Andreas on 1/16/21.
//

import SwiftUI

struct SlideView: View {
    @State var componets = [Componet(id: UUID().uuidString, type: "Title", x: 300, y: 300, width: 200, height: 200, text: "Title", font: "", foregroundColor: "black", backgroundColor: "lightGray")]
    var body: some View {
        GeometryReader { geo in
        ForEach(componets, id: \.self) { componet in
            if componet.type == "Title" {
                Text(componet.text)
                    .position(x: geo.frame(in: .local).minX + CGFloat(componet.x), y: geo.frame(in: .local).minY + CGFloat(componet.y))
                    .font(.title)
                    .foregroundColor(Color(componet.foregroundColor))
                    .padding()
                    .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).frame(width: CGFloat(componet.width), height: CGFloat(componet.height)).foregroundColor(Color(componet.backgroundColor)) .position(x: geo.frame(in: .local).minX + CGFloat(componet.x), y: geo.frame(in: .local).minY + CGFloat(componet.y)))
                   
            }
        }
        }
        }
    }


struct SlideView_Previews: PreviewProvider {
    static var previews: some View {
        SlideView()
    }
}
