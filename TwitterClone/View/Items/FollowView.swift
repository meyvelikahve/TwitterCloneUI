//
//  FollowView.swift
//  TwitterClone
//
//  Created by Recep Sevim on 9.05.2024.
//

import SwiftUI

struct FollowView: View {
    var count: Int
    var title: String
    var body: some View {
        HStack{
            Text("\(count)")
                .fontWeight(.bold)
            
            Text(title)
                .foregroundColor(.gray)
        }
    }
}


