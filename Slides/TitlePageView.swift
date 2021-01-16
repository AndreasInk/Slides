//
//  TitlePageView.swift
//  Slides
//
//  Created by Andreas on 1/16/21.
//

import SwiftUI

struct TitlePageView: View {
    @Binding var start: Bool
    @State var title: String
    var body: some View {
        ZStack {
        BackAnimation()
            .ignoresSafeArea()
        VStack {
           Text(title)
            .font(.largeTitle)
            .foregroundColor(.black)
            .padding()
            .background(RoundedRectangle(cornerRadius: 25).foregroundColor(Color("lightGray")))
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    withAnimation(.easeInOut) {
                    start = true
                    }
                }) {
                Text("Start")
                    .font(.headline)
            }
            } .padding()
        } .padding()
           
        }
    }
}


