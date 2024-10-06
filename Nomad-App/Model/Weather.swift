//
//  Weather.swift
//  Nomad-App
//
//  Created by Sebastien Besse on 04/10/2024.
//

import Foundation
struct Weather{
    
    enum AverageWeather{
        case sunny
        case cloudy
        case rainy
    }
    let condition: AverageWeather
    let temperature: Int
    
    func getWeatherEmoji()->String{
        var emoji = ""
        switch condition{
        case .sunny:
            emoji = "☀️"
        case .rainy:
            emoji = "🌦️"
        case .cloudy:
            emoji = "🌧️"
        }
        return emoji
    }
}
