//
//  ReviewCellView.swift
//  Nomad-App
//
//  Created by Sebastien Besse on 04/10/2024.
//

import SwiftUI

struct ReviewCellView: View {
    @StateObject var review 
    var body: some View {
        VStack(alignment: .leading){
            Text("Commentaire:")
                .bold()
            TextEditor()
        }
        
    }
}

#Preview {
    ReviewCellView()
        .environmentObject(ReviewViewModel())
}
