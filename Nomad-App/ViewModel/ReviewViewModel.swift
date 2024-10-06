//
//  ReviewViewModel.swift
//  Nomad-App
//
//  Created by Sebastien Besse on 04/10/2024.
//

import Foundation

class ReviewViewModel: ObservableObject{
    
    @Published var reviews : [Review] = []
    
    func addReview(post: String, note: Int8){
        let review = Review(post: post, note: note)
        reviews.append(review)
    }
    
    
}
