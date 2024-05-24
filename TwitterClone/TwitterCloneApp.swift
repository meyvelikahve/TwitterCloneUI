//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by Recep Sevim on 8.05.2024.
//

import SwiftUI

@main
struct TwitterCloneApp: App {
    
    init() {
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().shadowImage = UIImage()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AuthViewModel.shared)
        }
    }
}
