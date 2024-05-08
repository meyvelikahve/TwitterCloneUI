//
//  NotificationsView.swift
//  TwitterClone
//
//  Created by Recep Sevim on 8.05.2024.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack(spacing: 10){
            ScrollView{
                ForEach(0..<9){ _ in
                    NotificationCell()
                        
                }
            }
        }
        
    }
}

#Preview {
    NotificationsView()
}
