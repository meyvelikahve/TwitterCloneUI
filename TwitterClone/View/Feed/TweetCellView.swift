//
//  TweetCellView.swift
//  TwitterClone
//
//  Created by Recep Sevim on 8.05.2024.
//

import SwiftUI

struct TweetCellView: View {
    
    var tweet: String
    var tweetImage: String?
    
    var body: some View {
        
        VStack{
            HStack(alignment: .top, spacing: 10){
                Image("me")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                
                VStack(alignment: .leading, spacing: 10){
                    Text("Recep ")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    +
                    Text("@meyvelikahve")
                        .foregroundColor(.gray)
                    
                    Text(tweet)
                    
                    if let image = tweetImage {
                        GeometryReader { geo in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: geo.frame(in: .global).width, height: 250)
                                .cornerRadius(15)
                        }
                        .frame(height:  250)
                    }
                        
                }
            }
            
            HStack(spacing: 50){
                Button {
                    
                } label: {
                    Image("Comments")
                        .resizable()
                        .frame(width: 16, height: 16)
                        .foregroundColor(.gray)
                }
                Button {
                    
                } label: {
                    Image("Retweet")
                        .resizable()
                        .frame(width: 18, height: 14)
                        .foregroundColor(.gray)
                }
                
                Button {
                    
                } label: {
                    Image("love")
                        .resizable()
                        .frame(width: 18, height: 15)
                        .foregroundColor(.gray)
                }
                
                Button {
                    
                } label: {
                    Image("upload")
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 16, height: 16)
                        .foregroundColor(.gray)
                }
            }
            .padding(.top, 10)
        }
    }
}

#Preview {
    TweetCellView(tweet: sampleTweet)
}

var sampleTweet = "This is a sample tweet. This is a sample tweet. This is a sample tweet. This is a sample tweet. This is a sample tweet."
