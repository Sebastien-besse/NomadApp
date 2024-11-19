//
//  ReviewCellView.swift
//  Nomad-App
//
//  Created by Sebastien Besse on 04/10/2024.
//

import SwiftUI

struct ReviewCellView: View {
    @EnvironmentObject var reviews : ReviewViewModel
    @Binding var post : String
    @Binding var note : Int8
    let city: City
    
    var colorButton = Color(red: 0.999, green: 0.276, blue: 0.257)
    var body: some View {
        VStack(alignment: .leading){
            Text("Commentaire:")
                .bold()
            TextEditor(text: $post)
                .frame(width: .infinity, height: 100)
                .padding(4)
                .background(Color.white)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 0.2)
                )
            HStack{
                ForEach(1...5, id: \.self){ index in
                    Text("⭐️")
                        .grayscale(index <= note ? 0 : 1)
                        .onTapGesture {
                            note = Int8(index)
                        }
                }
                Spacer()
                Button {
                    if !post.isEmpty {
                        reviews.addReview(city: city, post: post, note: note)
                    }
                    post = ""
                    note = 0
                } label: {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 120, height: 50) // Taille explicite
                        .foregroundStyle(colorButton)
                        .overlay {
                            Text("Post review")
                                .foregroundStyle(.white)
                                .bold()
                        }
                }
                .padding(.leading, 20) 
            }
            .padding(.bottom)
   
            if let cityReviews = reviews.cityReviews.first(where: {$0.id == city.id})?.review{
                ForEach(cityReviews){review in
                    HStack(alignment: .top){
                        Text(review.post)
                            .font(.system(size: 14))
                        .bold()
                        .textFieldStyle(.plain)
                        Spacer()
                        VStack{
                            Text("⭐️")
                            Text("\(String(review.note))/5")
                                .font(.system(size: 14))
                                .fontWeight(.semibold)
                        }
                    }
                    .padding(.top, 8)
                    
                }
            }
        }
    }
}

#Preview {
    ReviewCellView(post: .constant("Super!"), note: .constant(3), city: cities[1])
        .environmentObject(ReviewViewModel())
}
