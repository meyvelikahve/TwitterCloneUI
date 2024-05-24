//
//  ContentView.swift
//  TwitterClone
//
//  Created by Recep Sevim on 8.05.2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        if viewModel.isAuthenticated {
            if let user = viewModel.currentUser {
                MainView(user: user)
            }
        }
        else{
            WelcomeView()
        }
    }
}

#Preview {
    ContentView()
}
