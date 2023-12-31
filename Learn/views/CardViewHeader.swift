//
//  CardViewHeader.swift
//  Learn
//
//  Created by Ahmed Ezz on 30/12/2023.
//

import SwiftUI

struct CardViewHeader: View {
    var title: String
    var subTitle: String
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(Color.white)
            Text(subTitle)
                .fontWeight(.light)
                .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    CardViewHeader(title: "Title", subTitle: "sub title")
}
