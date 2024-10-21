//  FeatureCard.swift
//  ChatPrototype

import SwiftUI

struct FeatureCard: View {
    let iconName: String
    let description: String
    
    var body: some View {
        HStack {
            Image(systemName: iconName)
                .font(.largeTitle)
                .frame(width: 40)
                .padding(.trailing, 5)
            Text(description)
                .font(.callout)
            Spacer()
        }
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.tint)
                .opacity(0.5)
                .brightness(-0.2)
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    FeatureCard(iconName: "person.2.crop.square.stack.fill",
                description: "A multiline description of the feature paired with the image on the left")
}
