//
//  SearchView.swift
//  TwitterClone
//
//  Created by Recep Sevim on 8.05.2024.
//

import SwiftUI

struct SearchView: View {
    
    @State var text = ""
    @State var isEditing = false
    
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            
            HStack {
                SearchBarView(text: $text, isEditing: $isEditing)
                    .padding(.horizontal)
                
            }
            
            if !isEditing {
                List(0..<9){ index in
                    SearchCell(tag: "Hello", tweets: String(index))
                    
                }
            } else {
                List(0..<9){ index in
                    SearchUserCell()
                    
                }
            }
        }
    }
}

#Preview {
    SearchView()
}
