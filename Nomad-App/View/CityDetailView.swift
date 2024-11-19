import SwiftUI

struct CityDetailView: View {
    
    @EnvironmentObject var reviews : ReviewViewModel
    @State var post : String = ""
    @State var note : Int8 = 3
    let city: City
    
    var body: some View {
        ScrollView{
                VStack(spacing: 20) {
                    Image(city.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: 280 )
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
                    VStack(spacing: 30) {
                        ExtractedDetailCityView(title: "Coût mensuel moyen", data: "$\(String(city.averageCost)) 💸")
                            .padding(.top, 10)

                        ExtractedDetailCityView(title: "Météo:", data: "\(String(city.weather.temperature))°C \(city.weather.getWeatherEmoji())")
                         

                        ExtractedDetailCityView(title: "Wifi:", data: "\(String(city.wifi)) Mbps 🛜")
                            .padding(.bottom, 10)

                        Divider()
                            

                        ReviewCellView(post: $post, note: $note, city: city)
                          
                    }
                    .padding([.top, .horizontal])
                }
                .frame(maxWidth: .infinity, alignment: .top)
            }
        
        .ignoresSafeArea()
    }
}

#Preview {
    CityDetailView(city: cities[1])
        .environmentObject(ReviewViewModel())
}


struct ExtractedDetailCityView: View {
    let title : String
    let data : String
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 16))
                .bold()
            Spacer()
            Text(data)
                .font(.system(size: 16))
        }
    }
}
