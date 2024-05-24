//
//  MessageCell.swift
//  TwitterClone
//
//  Created by Recep Sevim on 9.05.2024.
//

import SwiftUI

struct MessageCell: View {
    var body: some View {
        HStack(spacing: 10){
            Image("me")
                .resizable()
                .scaledToFill()
                .frame(width: 58,height: 58)
                .clipShape(Circle())
            
            VStack(alignment: .leading,spacing: 5){
                Text("Recep ")
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                +
                Text("@meyvelikahve")
                    .foregroundColor(.gray)
                
                Text("You: Hi, what's up?")
            }
            Spacer(minLength: 0)
            Text("20/05/24")
                .foregroundColor(.gray)
        }
        .padding(.vertical, 5)
        .padding(.horizontal)
    }
}

#Preview {
    MessageCell()
}
