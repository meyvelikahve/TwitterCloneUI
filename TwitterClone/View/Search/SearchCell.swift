//
//  SearchCell.swift
//  TwitterClone
//
//  Created by Recep Sevim on 8.05.2024.
//

import SwiftUI

struct SearchCell: View {
    var tag = ""
    var tweets = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text("hello")
                .fontWeight(.heavy)
            Text(tweets + " Tweets")
                .fontWeight(.light)
                
        }
    }
}

#Preview {
    SearchCell()
}
