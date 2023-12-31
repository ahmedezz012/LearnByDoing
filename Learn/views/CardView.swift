//
//  CardView.swift
//  Learn
//
//  Created by Ahmed Ezz on 25/12/2023.
//

import SwiftUI

struct CardView: View {
    var card: Card
    @State var fadeIn: Bool = false
    @State var upwardAndBackwardAnimation: Bool = false
    @State var showAlert: Bool = false
    var body: some View {
        ZStack {
            Image(card.imageName)
                .opacity(fadeIn ? CGFloat(.fadeInEndValue) : CGFloat(.fadeInStartValue))
                
            CardViewHeader(title: card.title, subTitle: card.headline)
                .offset(y: upwardAndBackwardAnimation ? -.animationEndPosition: -.animationStartPosition)
            
            CardViewButton(colors: card.gradientColors, title: card.callToAction, action: {
                showAlert.toggle()
            })
            .offset(y: upwardAndBackwardAnimation ? .animationEndPosition: .animationStartPosition)
        }
        .frame(width: .cardWidth, height: .cardHeight)
        .background(LinearGradient(colors: card.gradientColors,
                                   startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: .cardCornerRadius))
        .onAppear(perform: {
             withAnimation(.easeIn(duration: TimeInterval(.animationDuration))) {
                 fadeIn.toggle()
                 upwardAndBackwardAnimation.toggle()
             }
         })
        .alert(isPresented: $showAlert, content: {
             Alert(title: Text(card.title),
                   message: Text(card.message),
                   dismissButton: .default(Text(verbatim: .okText)))
         })
    }
}

#Preview {
    CardView(card: cardData[4])
}
