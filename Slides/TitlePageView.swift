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
            HStack {
           Text(title)
            .font(Font.custom("OpenSans-Bold", size: 35, relativeTo: .title))
            .foregroundColor(.black)
            .padding()
            .background(RoundedRectangle(cornerRadius: 25).foregroundColor(Color("lightGray")))
                Spacer()
            }
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    withAnimation(.easeInOut) {
                    start = true
                    }
                }) {
                Text("Start")
                    .font(Font.custom("OpenSans-SemiBold", size: 25, relativeTo: .title))
                    .padding()
                    .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/).foregroundColor(Color("lightGray")))
            }
            }
        } .padding()
           
        }
    }
}


