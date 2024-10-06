//
//  CityViewModel.swift
//  Nomad-App
//
//  Created by Sebastien Besse on 04/10/2024.
//

import Foundation

let cities = [
    City(image: "Tokyo-Japan", rang: 1, city: "Tokyo", country: "Japon", wifi: 63, averageCost: 3014, weather: .init(condition: .rainy, temperature: 25), review: nil),
    City(image: "Bangkok-Thaïland", rang: 2, city: "Bangkok", country: "Thaïland", wifi: 86, averageCost: 1322, weather: .init(condition: .sunny, temperature: 37), review: nil),
    City(image: "Seoul-Corée", rang: 3, city: "Séoul", country: "Corée du sud", wifi: 87, averageCost: 3075, weather: .init(condition: .rainy, temperature: 28), review: nil),
    City(image: "Los-Angeles-Etats-Unis", rang: 4, city: "Los Angeles", country: "États-Unis", wifi: 76, averageCost: 3058, weather: .init(condition: .sunny, temperature: 32), review: nil),
    City(image: "Osaka-Japon", rang: 5, city: "Osaka", country: "Japon", wifi: 88, averageCost: 4046, weather: .init(condition: .rainy, temperature: 24), review: nil),
    City(image: "Ubud-Bali", rang: 6, city: "Ubud", country: "Bali", wifi: 86, averageCost: 2050, weather: .init(condition: .sunny, temperature: 34), review: nil),
    City(image: "Seattle-Etats-Unis", rang: 7, city: "Seattle", country: "États-Unis", wifi: 76, averageCost: 3080, weather: .init(condition: .cloudy, temperature: 22), review: nil),
    City(image: "Kuala-Lumpu-Malaisie", rang: 8, city: "Kuala Lumpu", country: "Malaisie", wifi: 74, averageCost: 1879, weather: .init(condition: .rainy, temperature: 32), review: nil),
    City(image: "Ipoh-Malaisie", rang: 9, city: "Ipoh", country: "Mailaisie", wifi: 62, averageCost: 1350, weather: .init(condition: .rainy, temperature: 34), review: nil),
    City(image: "Miami-Etats-Unis", rang: 10, city: "Miami", country: "États-Unis", wifi: 78, averageCost: 4346, weather: .init(condition: .sunny, temperature: 30), review: nil),
    City(image: "Londre-Angleterre", rang: 11, city: "Londre", country: "Angleterre", wifi: 83, averageCost: 4580, weather: .init(condition: .cloudy, temperature: 19), review: nil),
    City(image: "Chiang-Mai-Thaïland", rang: 12, city: "Chiang Mai", country: "Thaïland", wifi: 62, averageCost: 2030, weather: .init(condition: .sunny, temperature: 34), review: nil),
    City(image: "Salta-Argentine", rang: 13, city: "Salta", country: "Argentine" , wifi: 42, averageCost: 2150, weather: .init(condition: .sunny, temperature: 28), review: nil),
    City(image: "Dubai", rang: 14, city: "Dubai", country: "Émirats arabes unis", wifi: 98, averageCost: 3400, weather: .init(condition: .sunny, temperature: 48), review: nil)
]
