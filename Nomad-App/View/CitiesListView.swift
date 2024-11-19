//
//  CitiesListView.swift
//  Nomad-App
//
//  Created by Sebastien Besse on 04/10/2024.
//

import SwiftUI

struct CitiesListView: View {
    let citiesList = cities
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 20){
                    ForEach(citiesList){city in
                        NavigationLink{
                        CityDetailView(city: city)
                        }label:{
                            CityCellView(city: city)
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Cities")
        }
        .tint(.white)
    }
}

#Preview {
    CitiesListView()
}
