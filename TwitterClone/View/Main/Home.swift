//
//  Home.swift
//  TwitterClone
//
//  Created by Recep Sevim on 8.05.2024.
//

import SwiftUI

struct Home : View {
    
    @Binding var x : CGFloat
    @State var showCreateTweet = false
    @State var selectedIndex = 0
    
    var body: some View {
        
        // Home View With Custom Nav bar...
        
        VStack {
            
            //Spacer()
            
            ZStack {
                
                TabView {
                    
                    Feed()
                        .onTapGesture {
                            selectedIndex = 0
                        }.navigationBarHidden(true)
                        .tabItem {
                            
                            if (selectedIndex == 0) {
                                Image("Home").renderingMode(.template).foregroundColor(Color("background"))
                            }
                            else {
                                Image("Home")
                            }
                            
                            
                        }.tag(0)
                    
                    SearchView()
                        .onTapGesture {
                            selectedIndex = 1
                        }.navigationBarHidden(true)
                        .tabItem {
                            
                            if (selectedIndex == 1) {
                                Image("Search").renderingMode(.template).foregroundColor(Color("background"))
                            }
                            else {
                                Image("Search").renderingMode(.template).foregroundColor(Color("background"))
                            }
                            
                            
                            
                        }.tag(1)
                    
                    NotificationsView()
                        .onTapGesture {
                            selectedIndex = 2
                        }.navigationBarHidden(true)
                        .tabItem {
                            
                            if (selectedIndex == 2) {
                                Image("Notifications").renderingMode(.template).foregroundColor(Color("background"))
                            }
                            else {
                                Image("Notifications").renderingMode(.template).foregroundColor(Color("background"))
                            }
                            
                            
                        }.tag(2)
                    
                    MessagesView()
                        .onTapGesture {
                            selectedIndex = 3
                        }.navigationBarHidden(true)
                        .tabItem {
                            
                            if (selectedIndex == 3) {
                                Image("Messages")
                            }
                            else {
                                Image("Messages").renderingMode(.template).foregroundColor(Color("background"))
                            }
                            
                            
                        }.tag(3)
                    
                }.accentColor(.blue)
                .edgesIgnoringSafeArea(.top)
                
                VStack{
                    
                    Spacer()
                    
                    HStack{
                        
                        Spacer()
                        
                        Button(action: {
                            
                            self.showCreateTweet.toggle()
                            
                        }) {
                            
                            Image("tweet").renderingMode(.template).resizable().frame(width: 20, height: 20).padding()
                        }.background(Color("background"))
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        
                    }.padding()
                    
                }.padding(.bottom,65)
                
            }
            .sheet(isPresented: $showCreateTweet) {
                
                CreateTweetView()
            }
        }
        
        
        // for drag gesture...
        .contentShape(Rectangle())
        .background(Color.white)
    }
}

struct TopBar: View {
    
    @Binding var x : CGFloat
    @State var width = UIScreen.main.bounds.width
    
    var body: some View {
        
        //SearchBar().frame(width: UIScreen.main.bounds.width - 120)
        
        
        VStack {
            HStack {
                
                Button(action: {
                    
                    // opening menu,...
                    
                    withAnimation{
                        
                        x = 0
                    }
                    
                }) {
                    
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 24))
                        .foregroundColor(Color("twitter"))
                }
                
                Spacer(minLength: 0)
                
                Image("Twitter")
                    .resizable()
                    .scaledToFill()
                    .padding(.trailing)
                    .frame(width: 20, height: 20)
                
                //                Text("Twitter")
                //                    .fontWeight(.bold)
                //                    .foregroundColor(.black)
                
                Spacer(minLength: 0)
            }
            .padding()
            
            //.padding(.top, 20)
            
            //.shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 1)
            
            Rectangle()
                .frame(width: width, height: 1)
                .foregroundColor(.gray)
                .opacity(0.3)
        }
        
        .background(Color.white)
        
    }
}
