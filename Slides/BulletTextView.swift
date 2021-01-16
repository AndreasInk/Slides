//
//  TextView.swift
//  Slides
//
//  Created by Andreas on 1/16/21.
//

import SwiftUI

struct BulletTextView: View {
    @State var text: String
    var body: some View {
        HStack {
           Image(systemName: "circle.fill")
            .font(.callout)
        Text(text)
            .font(.subheadline)
            .multilineTextAlignment(.leading)
            Spacer()
        } .padding()
        .padding(.leading, 20)
    }
}

