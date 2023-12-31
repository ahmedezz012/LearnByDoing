//
//  CardViewButton.swift
//  Learn
//
//  Created by Ahmed Ezz on 30/12/2023.
//

import SwiftUI

struct CardViewButton: View {
    var colors: [Color]
    var title: String
    var action: () -> Void
    
    var haptic = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        Button(action:  {
            haptic.impactOccurred()
            playAudio(sound: .soundEffect, type: .mp3)
            action()
        }, label: {
            HStack() {
                Text(title.uppercased())
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.white)
                Image(systemName: .rightArrow)
                    .foregroundStyle(Color.white)
                    .font(Font.title.weight(.medium))
                    
            }
            .padding(.vertical)
            .padding(.horizontal, .large)
            .background(LinearGradient(colors: colors, startPoint: .leading, endPoint: .trailing))
            .clipShape(Capsule())
        })
    }
}

#Preview {
    CardViewButton(colors: [Color.blue, Color.red], title: "Explore") {
        
    }
}
