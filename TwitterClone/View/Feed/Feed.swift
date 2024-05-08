//
//  Feed.swift
//  TwitterClone
//
//  Created by Recep Sevim on 8.05.2024.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing: 18){
                TweetCellView(tweet: "I'm back.", tweetImage: "post")
                ForEach(1...20, id: \.self){ _ in
                    TweetCellView(tweet: sampleTweet)
                    Divider()
                    
                }
            }
            .padding(.top)
            .padding(.horizontal, 5)
        }
    }
}

#Preview {
    Feed()
}
