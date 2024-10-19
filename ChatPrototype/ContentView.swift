//  ContentView.swift
//  ChatPrototype

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            ZStack {
                RoundedRectangle(cornerSize: CGSize(width: 40, height: 40))
                    .fill(Color.teal)
                    .frame(width: 110, height: 110)
                Image(systemName: "paperplane.fill")
                    .foregroundStyle(.background)
            }
            Text("by Mirsadra Molaei")
                .font(.subheadline)
                .padding()
                .background(Color.teal, in: RoundedRectangle(cornerRadius: 8))
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
