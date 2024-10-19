//  ContentView.swift
//  ChatPrototype

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 40, height: 40))
                .fill(Color.blue)
                .frame(width: 110, height: 110)
            Image(systemName: "paperplane.fill")
                .foregroundStyle(.background)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
