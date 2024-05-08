//
//  BlurView.swift
//  TwitterClone
//
//  Created by Recep Sevim on 11.05.2024.
//

import SwiftUI

struct BlurView : UIViewRepresentable{

    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemThinMaterialDark))
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    
}
