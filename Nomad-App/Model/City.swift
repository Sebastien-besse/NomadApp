//
//  City.swift
//  Nomad-App
//
//  Created by Sebastien Besse on 04/10/2024.
//
import Foundation

class City: Identifiable, ObservableObject{
    let id = UUID()
    let image: String
    let rang: Int
    let city: String
    let country: String
    let wifi: Int
    let averageCost: Int
    let weather: Weather
    var review: [Review]?
    
    init(image: String, rang: Int, city: String, country: String, wifi: Int, averageCost: Int, weather: Weather, review: [Review]?) {
        self.image = image
        self.rang = rang
        self.city = city
        self.country = country
        self.wifi = wifi
        self.averageCost = averageCost
        self.weather = weather
        self.review = review
    }
}
