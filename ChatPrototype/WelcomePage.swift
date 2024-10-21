//  WelcomePage.swift
//  ChatPrototype

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 150, height: 150)
                    .foregroundStyle(.tint)
                
                Image(systemName: "sun.rain.fill")
                    .font(Font.system(size: 80))
                    .foregroundStyle(.white)
            }
            
            Text("Welcome to My App")
                .font(.title)
                .fontWeight(.semibold)
                .padding(.top)

            Text("Enjoy the suggestions to wear a suitable outfit for this weather")
                .font(.title2)
                .multilineTextAlignment(.center)

        }
        .padding()
    }
}

#Preview {
    WelcomePage()
}
