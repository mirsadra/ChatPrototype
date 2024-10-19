//  WeatherForecastView.swift
//  ChatPrototype

import SwiftUI

struct WeatherForecastView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon")
            
            DayForecast(day: "Tue")
        }
    }
}

#Preview {
    WeatherForecastView()
}

struct DayForecast: View {
    let day: String     // day is a property of type String
    
    
    var body: some View {
        VStack {
            Text(day)
            Image(systemName: "sun.max.fill")
                .foregroundStyle(Color.yellow)
            Text("High: 70")
            Text("Low: 50")
        }
        .padding()
    }
}
