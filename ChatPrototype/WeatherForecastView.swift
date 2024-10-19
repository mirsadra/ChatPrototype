//  WeatherForecastView.swift
//  ChatPrototype

import SwiftUI

struct WeatherForecastView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", high: 70, low: 50)
            
            DayForecast(day: "Tue", high: 60, low: 40)
        }
    }
}

#Preview {
    WeatherForecastView()
}

struct DayForecast: View {
    let day: String     // day is a property of type String
    let high: Int8
    let low: Int8
    
    var body: some View {
        VStack {
            Text(day)
            Image(systemName: "sun.max.fill")
                .foregroundStyle(Color.yellow)
            Text("\(high)")
            Text("\(low)")
        }
        .padding()
    }
}
