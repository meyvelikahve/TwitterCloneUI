//
//  CustomAuthTextField.swift
//  TwitterClone
//
//  Created by Recep Sevim on 17.05.2024.
//


import SwiftUI

struct CustomAuthTextField: View {
    
    var placeHolder: String
    @Binding var text: String
    
    var body: some View {
        VStack {
            
            ZStack(alignment: .leading) {
                
                if text.isEmpty {
                    Text(placeHolder)
                        .foregroundColor(.gray)
                }
                
                TextField("", text: $text)
                    .frame(height: 45)
                    .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
            }
            
            
            Rectangle()
                .frame(height: 1, alignment: .center)
                .foregroundColor(.gray)
                .padding(.top, -2)
                
        }
        .padding(.horizontal)
    }
}

struct CustomAuthTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomAuthTextField(placeHolder: "Name", text: .constant(""))
    }
}

