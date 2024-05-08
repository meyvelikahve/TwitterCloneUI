//
//  LoginView.swift
//  TwitterClone
//
//  Created by Recep Sevim on 17.05.2024.
//


import SwiftUI

struct LogInView: View {
    
    @State var email = ""
    @State var password = ""
    @State var emailDone = false
    
    var body: some View {
        if !emailDone {
            VStack {
                
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
                    
                    Text("To get started first enter your phone, email, or @username")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.top)
                    
                    CustomAuthTextField(placeHolder: "Phone, email, or username", text: $email)
                }
                
                Spacer(minLength: 0)
                
                VStack {
                    Button(action: {
                        emailDone.toggle()
                    }, label: {
                        Capsule()
                            .frame(width: 360, height: 40, alignment: .center)
                            .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                            .overlay(Text("Next").foregroundColor(.white))
                    })
                    .padding(.bottom, 4)
                    
                    Text("Forgot password?")
                        .foregroundColor(.blue)
                    
                }
                
                
            }
        }
        else {
            VStack {
                
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
                    
                    Text("Enter your password")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                        .padding(.top)
                    
                    CustomAuthTextField(placeHolder: "Password", text: $password)
                }
                
                Spacer(minLength: 0)
                
                VStack {
                    Button(action: {
                        
                    }, label: {
                        Capsule()
                            .frame(width: 360, height: 40, alignment: .center)
                            .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                            .overlay(Text("Log in").foregroundColor(.white))
                    })
                    .padding(.bottom, 4)
                    
                    Text("Forgot password?")
                        .foregroundColor(.blue)
                    
                }
                
                
            }
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}

