//
//  SearchBarView.swift
//  TwitterClone
//
//  Created by Recep Sevim on 8.05.2024.
//

import SwiftUI

struct SearchBarView: View {
    
    @Binding var text : String
    @Binding var isEditing: Bool
    
    @FocusState private var textFieldFocused: Bool
    
    var body: some View {
        HStack{
            
            TextField("Search", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(20)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 8)
                    }
                )
                .focused($textFieldFocused)
            
            if isEditing {
                Button {
                    textFieldFocused = false
                    self.isEditing.toggle()
                    self.text = ""
                } label: {
                    Text("Cancel")
                        .foregroundColor(.primary)
                }
                .padding(.trailing, 10)

            }
            
        }
        .onTapGesture {
            isEditing = true
        }
    }
}

