//  WeatherForecastView.swift
//  ChatPrototype

import SwiftUI

struct WeatherForecastView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                DayForecast(day: "Mon", isRainy: false, high: 21, low: -1)
                
                DayForecast(day: "Tue", isRainy: true, high: 24, low: 3)
                
                DayForecast(day: "Wed", isRainy: true, high: 37, low: 6)
                
                DayForecast(day: "Thu", isRainy: false, high: 18, low: 7)
                
                DayForecast(day: "Fri", isRainy: true, high: 17, low: -4)
            }
        }
    }
}

#Preview {
    WeatherForecastView()
}

struct DayForecast: View {
    let day: String     // day is a stored property of type String
    let isRainy: Bool
    let high: Int8
    let low: Int8
    
    // For Bool you've to create a compound property (aka: accessor) that represents the icon's name
    var iconName: String {
        return isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }
    
    var iconColor: Color {
        return isRainy ? Color.blue : Color.yellow
    }
    
    var body: some View {
        VStack {
            Text(day)
                .font(Font.headline)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
                .font(Font.largeTitle)
                .padding(0.8)
            Text("High: \(high)ºC")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)ºC")
                .fontWeight(.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}
