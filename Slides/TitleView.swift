//
//  TitleView.swift
//  Slides
//
//  Created by Andreas on 1/16/21.
//

import SwiftUI

struct TitleView: View {
    @State var text: String
    var body: some View {
        HStack {
        Text(text)
            .font(Font.custom("OpenSans-Bold", size: 55, relativeTo: .title))
            .multilineTextAlignment(.leading)
            Spacer()
        } .padding()
    }
}
