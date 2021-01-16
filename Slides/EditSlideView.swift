//
//  EditSlideView.swift
//  Slides
//
//  Created by Andreas on 1/16/21.
//

import SwiftUI

struct EditSlideView: View {
    @State var componets = [Componet(id: UUID().uuidString, type: "Rect", x: 0.5, y: 0.5, width: 200, height: 200, text: "Title", font: "", foregroundColor: "lightGray"), Componet(id: UUID().uuidString, type: "Title", x: 0.5, y: 0.5, width: 200, height: 200, text: "Title", font: "", foregroundColor: "black")]
    
    
   
    var body: some View {
        GeometryReader { geo in
            
        ForEach(componets, id: \.self) { componet in
            if componet.type == "Title" {
                Text(componet.text)
                    .position(x: geo.frame(in: .local).maxX - CGFloat(componet.x)*geo.size.width, y: geo.frame(in: .local).maxY - CGFloat(componet.y)*geo.size.height)
                    .font(.title)
                    .foregroundColor(Color(componet.foregroundColor))
                    .padding()
                   
                   
            } else if componet.type == "Rect" {
                RoundedRectangle(cornerRadius: 25)
                    .position(x: CGFloat(componet.x), y: CGFloat(componet.y))
                    .frame(width: CGFloat(componet.width), height: CGFloat(componet.height))
                .foregroundColor(Color(componet.foregroundColor))
                .padding()
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                componets[0].x = Double(gesture.translation.width)
                                componets[0].y =  Double(gesture.translation.height)
                               
                                print(1)
                            }

                            .onEnded { _ in
                                
                            }
                    )
            }
        
            }
        }
        }
    }

