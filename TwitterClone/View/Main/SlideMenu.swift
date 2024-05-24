//
//  SlideMenu.swift
//  TwitterClone
//
//  Created by Recep Sevim on 9.05.2024.
//

import SwiftUI

struct SlideMenu: View {
    @State var showMenu = true
    
    var width = UIScreen.main.bounds.width
    
    var menuButtons = ["Profile", "Lists", "Topics", "Bookmarks", "Moments"]
    
    var body: some View {
        VStack (alignment: .leading){
            ScrollView {
                VStack{
                    HStack(spacing: 0){
                        VStack(alignment: .leading){
                            NavigationLink {
                                ProfileView()
                            } label: {
                                Image("me")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 60,height: 60)
                                    .clipShape(Circle())
                            }

                            
                                
                            
                            HStack(alignment: .top, spacing: 12){
                                VStack (alignment: .leading, spacing: 12){
                                    Text("Recep")
                                        .font(.title3)
                                    .fontWeight(.bold)
                                    
                                    Text("@meyvelikahve")
                                        .foregroundColor(.gray)
                                    
                                    HStack(spacing: 20){
                                        FollowView(count: 8, title: "Following")
                                        FollowView(count: 16, title: "Followers")
                                    }
                                    .padding(.top, 10)
                                    
                                    Divider()
                                        .padding(.top, 10)
                                }
                            }
                            
                        }
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            withAnimation{
                                self.showMenu.toggle()
                            }
                        }, label: {
                            Image(systemName: showMenu ? "chevron.down" : "chevron.up")
                                .foregroundColor(Color(AssetsStrings.backgroundColor))
                        })
                    }
                    
                    VStack(alignment: .leading){
                        ForEach(menuButtons, id: \.self){ item in
                            MenuButton(title: item)
                        }
                        Divider()
                            .padding(.top)
                        
                        Button(action: {}, label: {
                            MenuButton(title: "Twitter Ads")
                            
                        })
                        Divider()
                        
                        Button(action: {}, label: {
                            Text("Settings and privacy")
                        })
                        .padding(.vertical)
                        
                        Button(action: {}, label: {
                            Text("Help center")
                        })
                        
                        Spacer(minLength: 0)
                        
                        Divider()
                            .padding(.bottom)
                        
                        
                    }
                    .opacity(showMenu ? 1 : 0)
                    .frame(height: showMenu ? nil : 0)
                    
                    VStack(alignment: .leading){
                        Button(action: {}, label: {
                            Text("Create a new account")
                                .foregroundColor(Color(AssetsStrings.backgroundColor))
                        })
                        .padding(.bottom, 10)
                        Button(action: {}, label: {
                            Text("Add an existing account")
                                .foregroundColor(Color(AssetsStrings.backgroundColor))
                        })
                        Spacer(minLength: 0)
                        Divider()
                    }
                    .opacity(!showMenu ? 1 : 0)
                    .frame(height: !showMenu ? nil : 0)
                    
                }
                .padding(.horizontal, 20)
                
            }
            HStack(){
                Button(action: {}, label: {
                    Image("help")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 26, height: 26)
                        .foregroundColor(Color(AssetsStrings.backgroundColor))
                })
                Spacer(minLength: 0)
                Button(action: {}, label: {
                    Image("barcode")
                        .renderingMode(.template)
                        .resizable()
                        .frame(width: 26, height: 26)
                        .foregroundColor(Color(AssetsStrings.backgroundColor))
                })
                
            }
            .padding()
        }
        .frame(width: width - 90)
        .background(Color.white)
        
    }
}

#Preview {
    SlideMenu()
}
