//
//  ContentView.swift
//  Learn
//
//  Created by Ahmed Ezz on 25/12/2023.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            HStack(alignment: .center, spacing: .medium, content: {
                ForEach(cardData) {card in
                    CardView(card: card)
                }
            }).padding(.horizontal, .medium)
        }
    }
}

#Preview {
    ContentView()
}
