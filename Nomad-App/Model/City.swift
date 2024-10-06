//
//  City.swift
//  Nomad-App
//
//  Created by Sebastien Besse on 04/10/2024.
//
import Foundation

struct City: Identifiable{
    let id = UUID()
    let image: String
    let rang: Int
    let city: String
    let country: String
    let wifi: Int
    let averageCost: Int
    let weather: Weather
    let review: [Review]?
}
