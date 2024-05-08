//
//  MenuButton.swift
//  TwitterClone
//
//  Created by Recep Sevim on 9.05.2024.
//

import SwiftUI

struct MenuButton: View {
    var title: String
    
    var body: some View {
        HStack(spacing: 15){
            Image(title)
                .resizable()
                .renderingMode(.template)
                .frame(width: 24, height: 24)
                .foregroundColor(.gray)
            
            Text(title)
            
            Spacer(minLength: 0)
        }
        .padding(.vertical, 12)
    }
}

