//
//  WelcomeView.swift
//  TwitterClone
//
//  Created by Recep Sevim on 17.05.2024.
//


import SwiftUI

struct WelcomeView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer(minLength: 0)
                    
                    Image("Twitter")
                        .resizable()
                        .scaledToFill()
                        .padding(.trailing)
                        .frame(width: 20, height: 20)
                    
                    Spacer(minLength: 0)
                }
                Spacer(minLength: 0)
                
                Text("See what's happening in the world right now.")
                    .font(.system(size: 30, weight: .heavy, design: .default))
                    .frame(width: (width * 0.9), alignment: .center)
                
                
                Spacer(minLength: 0)
                
                //Buttons
                
                VStack(alignment: .center, spacing: 10, content: {
                    Button(action: {
                        print("Hello button tapped!")
                        
                    }) {
                        HStack(spacing: -4) {
                            
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            
                            Text("Continue with Google")
                                .fontWeight(.bold)
                                .font(.title3)
                                .foregroundColor(.black)
                                .padding()
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 36)
                                .stroke(Color.black, lineWidth: 1)
                                .opacity(0.3)
                                .frame(width: 320, height: 60, alignment: .center)
                        )
                        
                    }
                    
                    
                    Button(action: {
                        print("Hello button tapped!")
                        
                    }) {
                        HStack(spacing: -4) {
                            
                            Image("apple")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            
                            Text("Continue with Apple")
                                .fontWeight(.bold)
                                .font(.title3)
                                .foregroundColor(.black)
                                .padding()
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 36)
                                .stroke(Color.black, lineWidth: 1)
                                .opacity(0.3)
                                .frame(width: 320, height: 60, alignment: .center)
                        )
                        
                    }
                    
                    
                    HStack {
                        Rectangle()
                            .foregroundColor(.gray)
                            .opacity(0.3)
                            .frame(width: (width * 0.35), height: 1)
                        
                        Text("Or")
                            .foregroundColor(.gray)
                        
                        Rectangle()
                            .foregroundColor(.gray)
                            .opacity(0.3)
                            .frame(width: (width * 0.35), height: 1)
                    }
                    
                    
                    NavigationLink {
                        RegisterView()
                            .navigationBarHidden(true)
                    } label: {
                        RoundedRectangle(cornerRadius: 36)
                            .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                            .frame(width: 320, height: 60, alignment: .center)
                            .overlay(Text("Create account")
                                .fontWeight(.bold)
                                .font(.title3)
                                .foregroundColor(.white)
                                .padding()
                            )
                    }


                    
                    
                })
                .padding()
                
                //Bottom Buttons
                
                VStack(alignment: .leading) {
                    VStack {
                        Text("By signing up, you agree to our ") + Text("Terms").foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255)) + Text(",") + Text(" Privacy Policy").foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255)) + Text(", and Cookie Use.")
                    }.padding(.bottom)
                    
                    HStack(spacing: 2) {
                        Text("Have an account already? ")
                        
                        NavigationLink {
                            LoginView()
                                .navigationBarHidden(true)
                        } label: {
                            Text("Log in")
                                .foregroundColor(Color(red: 29 / 255, green: 161 / 255, blue: 242 / 255))
                        }

                        
                    }
                }
                
                
                
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

