//
//  SearchUserCell.swift
//  TwitterClone
//
//  Created by Recep Sevim on 8.05.2024.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        HStack{
            Image("me")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 44, height: 44)
                .clipShape(Circle())
            
            VStack(alignment: .leading){
                Text("Recep")
                    .fontWeight(.heavy)
                
                Text("@meyvelikahve")
            }
            
            Spacer(minLength: 0)
        }
    }
}

#Preview {
    SearchUserCell()
}
