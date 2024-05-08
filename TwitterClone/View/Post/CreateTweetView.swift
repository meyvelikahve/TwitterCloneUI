//
//  CreateTweetView.swift
//  TwitterClone
//
//  Created by Recep Sevim on 8.05.2024.
//

import SwiftUI

struct CreateTweetView: View {
    @State var text = ""
    
    
    var body: some View {
        VStack{
            HStack{
                Button {
                    
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                Button {
                    
                } label: {
                    Text("Tweet")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 10)
                }
                .background(Color(AssetsStrings.backgroundColor))
                .foregroundColor(.white)
                .clipShape(Capsule())

            }
            .padding()
        }
        
        TextField("Type Something", text: $text, axis: .vertical)
          .lineLimit(5, reservesSpace: true)
          .padding(.horizontal, 20)
        
        Spacer()
    }
}

#Preview {
    CreateTweetView()
}
