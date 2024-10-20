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
            Text("Enjoy the suggestions to wear a suitable outfit for this weather")
                .font(.headline)
                .multilineTextAlignment(.center)
        }
        .padding()
    }
}

#Preview {
    WelcomePage()
}
