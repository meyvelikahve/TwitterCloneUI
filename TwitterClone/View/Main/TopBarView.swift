//
//  TopBarView.swift
//  TwitterClone
//
//  Created by Recep Sevim on 9.05.2024.
//

import SwiftUI

struct TopBarView: View {
    @Binding var x: CGFloat
    @State var width = UIScreen.main.bounds.width
    var body: some View {
        VStack{
            HStack{
                Button {
                    withAnimation{
                        x = 0
                    }
                } label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 24))
                        .foregroundColor(Color(AssetsStrings.backgroundColor))
                }
                Spacer(minLength: 0)
                Image("Twitter")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing)
                    .frame(width: 20, height: 20)
                
                Spacer(minLength: 0)

            }
            .padding()
            
            Rectangle()
                .frame(width: width, height: 1)
                .foregroundColor(.gray)
                .opacity(0.3)
        }
    }
}

