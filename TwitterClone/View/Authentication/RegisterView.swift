//
//  RegisterView.swift
//  TwitterClone
//
//  Created by Recep Sevim on 17.05.2024.
//


import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
     
    var body: some View {
        VStack {
            ZStack {
                
                HStack {
                    Button(action: {
                        
                    }, label: {
                        Text("Cancel")
                            .foregroundColor(.blue)
                    })
                        
                    Spacer()
                }
                .padding(.horizontal)
                
                Image("Twitter")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing)
                    .frame(width: 20, height: 20)
            }
            
            Text("Create your account")
                .font(.title)
                .bold()
                .padding(.top, 35)
            
            VStack(alignment: .leading) {
                CustomAuthTextField(placeHolder: "Name", text: $name)
                CustomAuthTextField(placeHolder: "Phone number or email address", text: $email)
                CustomAuthTextField(placeHolder: "Password", text: $password)
            }
            
            Spacer(minLength: 0)
            
            VStack {
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(.gray)
                
                HStack {
                    
                    
                    Spacer()
                    
                    Button(action: {
                        self.viewModel.register(name: name, username: name, email: email, password: password)
                    }, label: {
                        Capsule()
                            .frame(width: 60, height: 30, alignment: .center)
                            .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                            .overlay(
                                Text("Next")
                                    .foregroundColor(.white)
                            )
                        
                    })
                    .padding(.trailing, 24)
                }
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

