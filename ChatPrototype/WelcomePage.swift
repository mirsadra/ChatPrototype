//  WelcomePage.swift
//  ChatPrototype

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 130, height: 130)
                    .foregroundStyle(.tint)
                Image(systemName: "sun.rain.fill")
                    .font(Font.largeTitle)
                    .foregroundStyle(.blue)
     
                // Yellow part (sun)
                Image(systemName: "sun.rain.fill")
                    .font(Font.system(size: 70))
                    .foregroundStyle(.white)
     
            }
            
            Text("Welcome to My App")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .fontWidth(.condensed)
                .padding(.top)
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
