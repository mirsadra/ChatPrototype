//  WelcomePage.swift
//  ChatPrototype

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            Text("Welcome to My App")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .fontWidth(.condensed)
                .border(.secondary, width: 1.5)
            Text("Enjoy the suggestions to wear a suitable outfit for this weather")
                .font(.headline)
                .multilineTextAlignment(.center)
                .border(.secondary, width: 1.5)
        }
        .border(.tint, width: 3)
        .padding()
        .border(.indigo, width: 10)
    }
}

#Preview {
    WelcomePage()
}
