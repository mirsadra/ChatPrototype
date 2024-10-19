//  WeatherForecastView.swift
//  ChatPrototype

import SwiftUI

struct WeatherForecastView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", isRainy: false, high: 70, low: 50)
            
            DayForecast(day: "Tue", isRainy: true, high: 60, low: 40)
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
    
    // isRainy property is Bool, so you've to create a compound property (aka: accessor) that represents the icon's name
    var iconName: String {
        return isRainy ? "cloud.rain.fill" : "sun.max.fill"
    }
    
    var iconColor: Color {
        return isRainy ? Color.blue : Color.yellow
    }
    
    var body: some View {
        VStack {
            Text(day)
            Image(systemName: iconName)
                .foregroundStyle(iconColor)
            Text("High: \(high)ºC")
            Text("Low: \(low)ºC")
        }
        .padding()
    }
}
