//
//  CityCellView.swift
//  Nomad-App
//
//  Created by Sebastien Besse on 04/10/2024.
//

import SwiftUI

struct CityCellView: View {
    
    let city : City
    
    var body: some View {
        ZStack{
            Image(city.image)
                .resizable()
                .scaledToFill()
                .frame(width: .infinity, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                .overlay{
                    RoundedRectangle(cornerRadius: 16)
                        .fill(.black)
                        .opacity(0.2)
                }
            
            HStack{
                Text(String(city.rang))
                    .font(.system(size: 16))
                    .foregroundStyle(.white)
                    .bold()
                    .shadow(color: .black, radius:12, x: 0.0, y: 10)
                
                Spacer()
                
                Image(systemName: "wifi")
                    .foregroundStyle(.white)
                    
                VStack{
                    Text(String(city.wifi))
                        .font(.system(size: 16))
                        .foregroundStyle(.white)
                        .bold()
                    Text("Mbs")
                        .font(.system(size: 10))
                        .foregroundStyle(.white)
                        .bold()
                }
            }
            .offset(y: -75)
            .padding()
            
            VStack{
                Text(city.city)
                    .font(.system(size: 22))
                    .foregroundStyle(.white)
                    .bold()
                Text(city.country)
                    .font(.system(size: 12))
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
            }
            .shadow(color: .black, radius:12, x: 0.0, y: 10)
            
            HStack{
                Text(city.weather.getWeatherEmoji())
                Text("\(String(city.weather.temperature))°")
                Spacer()
                Text("$ \(String(city.averageCost))/mo")
                    .font(.system(size: 16))
                    .foregroundStyle(.white)
                    .bold()
                    .shadow(color: .black, radius:12, x: 0.0, y: 10)
            }
            .padding()
            .font(.system(size: 16))
            .foregroundStyle(.white)
            .bold()
            .shadow(color: .black, radius: 1)
            .offset(y: 75)
        }
        
    }
}

#Preview {
    CityCellView(city: cities[0])
}

/*
 Voici les styles qui sont utilisés dans cette cellule :
 Image:
 Corner radius : 16
 
 Rang:
 Le rang (en haut à gauche) : 16 + bold
 
 Wifi:
 L’icône wifi (en haut à droite) :
 Le nombre : 16 + bold
 “Mbps” : 10 + bold
 
 Nom de la ville : 22 + bold
 
 Pays: 12 + semibold
 Température : 16 + bold
 Coût moyen : 16 + bold
 ‎

 Pour mieux distinguer les textes de l’image de fond :

 Une ombre est appliqué sur tous les textes
 Un rectangle noir d’opacité 15% est appliqué sur l’image
 */