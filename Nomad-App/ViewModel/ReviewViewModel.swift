//
//  ReviewViewModel.swift
//  Nomad-App
//
//  Created by Sebastien Besse on 04/10/2024.
//

import Foundation
import SwiftUI


class ReviewViewModel: ObservableObject{
    
    @Published var cityReviews : [City] = cities
    
    func addReview(city : City, post: String, note: Int8){
        let review = Review(post: post, note: note)
        if let index = cityReviews.firstIndex(where: {$0.id == city.id}){
            if cityReviews[index].review != nil {
                cityReviews[index].review?.append(review)
            } else {
                cityReviews[index].review = [review]
            }
        }
    }
}
