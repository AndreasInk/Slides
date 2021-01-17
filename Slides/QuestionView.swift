//
//  QuestionView.swift
//  Slides
//
//  Created by Andreas on 1/16/21.
//

import SwiftUI

struct QuestionView: View {
    @State var question: Question
    var body: some View {
        VStack {
        Text(question.question)
            .font(Font.custom("OpenSans-SemiBold", size: 25, relativeTo: .title))
            Spacer()
            ForEach(question.options, id: \.self) { option in
                Button(action: {
                    if question.answer == option {
                        
                    }
                }) {
                   
                       
                           
                    Text(option)
                        .font(Font.custom("OpenSans-SemiBold", size: 25, relativeTo: .title))
                        .padding()
                        .background( RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(Color("lightGray")).frame(minWidth: 250))
                }
            }
        }
    }
}


