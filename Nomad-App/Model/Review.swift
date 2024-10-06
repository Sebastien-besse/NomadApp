//
//  Review.swift
//  Nomad-App
//
//  Created by Sebastien Besse on 04/10/2024.
//

import Foundation

struct Review: Identifiable{
    let id = UUID()
    let post: String
    let note: Int8
}
