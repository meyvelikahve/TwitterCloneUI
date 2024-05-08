//
//  NotificationCell.swift
//  TwitterClone
//
//  Created by Recep Sevim on 8.05.2024.
//

import SwiftUI

struct NotificationCell: View {
    @State var width = UIScreen.main.bounds.width
    var body: some View {
        VStack {
            
            
            HStack(alignment: .top){
                
                Image(systemName: "person.fill")
                    .resizable()
                    .foregroundColor(.blue)
                    .scaledToFit()
                    .frame(width: 20,height: 20)
                
                
                VStack(alignment: .leading, spacing: 5){
                    Image("me")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 36, height: 36)
                        .cornerRadius(18)
                    
                    Text("Recep ")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    
                    +
                    Text("followed you.")
                        .foregroundColor(.black)
                }
                Spacer(minLength: 0)
            }
            .padding(.horizontal)
            Divider()
        }
        .padding(.vertical, 5)
        
    }
}

#Preview {
    NotificationCell()
}
