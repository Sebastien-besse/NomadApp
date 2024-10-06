import SwiftUI

struct CityDetailView: View {
    
    let city: City
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                    Image(city.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 280)
                        .clipped()
                        .overlay {
                            Rectangle()
                                .fill(Color.black)
                                .opacity(0.2)
                            VStack {
                                Text(city.city)
                                    .font(.system(size: 30))
                                    .foregroundColor(.white)
                                    .bold()
                                Text(city.country)
                                    .font(.system(size: 18))
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                            }
                            .shadow(color: .black, radius: 8, x: 0, y: 10)
                        }
               

              
                VStack(alignment: .leading, spacing: 15) {
                    HStack {
                        Text("Coût mensuel moyen:")
                            .font(.system(size: 16))
                            .bold()
                        Spacer()
                        Text("$\(String(city.averageCost)) 💸")
                            .font(.system(size: 16))
                    }
                    HStack {
                        Text("Météo:")
                            .font(.system(size: 16))
                            .bold()
                        Spacer()
                        Text("\(String(city.weather.temperature))°C \(city.weather.getWeatherEmoji())")
                            .font(.system(size: 16))
                    }
                    HStack {
                        Text("Wifi:")
                            .font(.system(size: 16))
                            .bold()
                        Spacer()
                        Text("\(String(city.wifi)) Mbps 🛜")
                            .font(.system(size: 16))
                    }
                }
                .frame(maxWidth: 380)
                .padding()

                Divider()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    CityDetailView(city: cities[10])
}

