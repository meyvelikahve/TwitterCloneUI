//
//  MessagesView.swift
//  TwitterClone
//
//  Created by Recep Sevim on 8.05.2024.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        VStack{
            ScrollView{
                ForEach(0..<9){ _ in
                    MessageCell()
                    Divider()
                }
            }
        }
    }
}

#Preview {
    MessagesView()
}
