//
//  CityViewModel.swift
//  Nomad-App
//
//  Created by Sebastien Besse on 04/10/2024.
//

import Foundation

let cities = [
    City(image: "Tokyo-Japan", rang: 1, city: "Tokyo", country: "Japon", wifi: 63, averageCost: 3014, weather: .init(condition: .rainy, temperature: 25), review: [
        Review(post: "Ville incroyable ! Beaucoup de culture et de technologie.", note: 5),
        Review(post: "Transports en commun très pratiques, mais parfois bondés.", note: 4)
    ]),
    City(image: "Bangkok-Thaïland", rang: 2, city: "Bangkok", country: "Thaïland", wifi: 86, averageCost: 1322, weather: .init(condition: .sunny, temperature: 37), review: [
        Review(post: "Marchés de rue fantastiques, nourriture délicieuse !", note: 5),
        Review(post: "Climat très chaud, mais l'ambiance est agréable.", note: 4)
    ]),
    City(image: "Seoul-Corée", rang: 3, city: "Séoul", country: "Corée du sud", wifi: 87, averageCost: 3075, weather: .init(condition: .rainy, temperature: 28), review: [
        Review(post: "Ville dynamique avec une culture K-pop unique.", note: 5),
        Review(post: "Les temples anciens sont incroyables.", note: 4)
    ]),
    City(image: "Los-Angeles-Etats-Unis", rang: 4, city: "Los Angeles", country: "États-Unis", wifi: 76, averageCost: 3058, weather: .init(condition: .sunny, temperature: 32), review: [
        Review(post: "Hollywood et plages incroyables, mais circulation horrible.", note: 4),
        Review(post: "Climat parfait presque toute l'année.", note: 5)
    ]),
    City(image: "Osaka-Japon", rang: 5, city: "Osaka", country: "Japon", wifi: 88, averageCost: 4046, weather: .init(condition: .rainy, temperature: 24), review: [
        Review(post: "Excellente nourriture, surtout le takoyaki !", note: 5),
        Review(post: "Moins touristique que Tokyo, ce qui est agréable.", note: 4)
    ]),
    City(image: "Ubud-Bali", rang: 6, city: "Ubud", country: "Bali", wifi: 86, averageCost: 2050, weather: .init(condition: .sunny, temperature: 34), review: [
        Review(post: "Havre de paix pour les amateurs de yoga.", note: 5),
        Review(post: "Les rizières sont magnifiques.", note: 4)
    ]),
    City(image: "Seattle-Etats-Unis", rang: 7, city: "Seattle", country: "États-Unis", wifi: 76, averageCost: 3080, weather: .init(condition: .cloudy, temperature: 22), review: [
        Review(post: "Ville charmante, mais il pleut souvent.", note: 3),
        Review(post: "Le café est fantastique !", note: 4)
    ]),
    City(image: "Kuala-Lumpu-Malaisie", rang: 8, city: "Kuala Lumpur", country: "Malaisie", wifi: 74, averageCost: 1879, weather: .init(condition: .rainy, temperature: 32), review: [
        Review(post: "Les tours jumelles sont impressionnantes.", note: 4),
        Review(post: "Mélange intéressant de modernité et de traditions.", note: 4)
    ]),
    City(image: "Ipoh-Malaisie", rang: 9, city: "Ipoh", country: "Malaisie", wifi: 62, averageCost: 1350, weather: .init(condition: .rainy, temperature: 34), review: [
        Review(post: "Ville calme avec une excellente cuisine.", note: 4)
    ]),
    City(image: "Miami-Etats-Unis", rang: 10, city: "Miami", country: "États-Unis", wifi: 78, averageCost: 4346, weather: .init(condition: .sunny, temperature: 30), review: [
        Review(post: "Les plages sont fantastiques.", note: 5),
        Review(post: "La vie nocturne est incroyable.", note: 5)
    ]),
    City(image: "Londre-Angleterre", rang: 11, city: "Londres", country: "Angleterre", wifi: 83, averageCost: 4580, weather: .init(condition: .cloudy, temperature: 19), review: [
        Review(post: "Ville chère, mais tellement riche en histoire.", note: 4),
        Review(post: "Les musées gratuits sont incroyables.", note: 5)
    ]),
    City(image: "Chiang-Mai-Thaïland", rang: 12, city: "Chiang Mai", country: "Thaïland", wifi: 62, averageCost: 2030, weather: .init(condition: .sunny, temperature: 34), review: [
        Review(post: "Parfait pour les nomades numériques.", note: 5),
        Review(post: "La vieille ville est charmante.", note: 4)
    ]),
    City(image: "Salta-Argentine", rang: 13, city: "Salta", country: "Argentine", wifi: 42, averageCost: 2150, weather: .init(condition: .sunny, temperature: 28), review: [
        Review(post: "Ville colorée avec une ambiance décontractée.", note: 4)
    ]),
    City(image: "Dubai", rang: 14, city: "Dubai", country: "Émirats arabes unis", wifi: 98, averageCost: 3400, weather: .init(condition: .sunny, temperature: 48), review: [
        Review(post: "Ville futuriste, mais très chaude.", note: 4),
        Review(post: "Les gratte-ciel sont impressionnants.", note: 5)
    ])
]
