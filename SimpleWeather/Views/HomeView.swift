//
//  HomeView.swift
//  SimpleWeather
//
//  Created by yuki on 2024/05/24.
//
import SwiftUI

struct HomeView: View {
    @ObservedObject var model = WeatherApiModel.shared
    @State var isLocationSelector = false
    var body: some View {
        
        
        ZStack{
            NavigationStack{
                ZStack {
                    if let weatherInfo = model.weatherInfo{
                        BgWeather(weatherInfo: weatherInfo)
                            .ignoresSafeArea()
                        
                    }
                    VStack{
                        if let weatherInfo = model.weatherInfo{
                            MainWeather(weatherInfo: weatherInfo)
                        }
                    }.onAppear {
                        model.setInfo(params: WeatherParametersModel(lat: 35.6895, lon: 139.6917))
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button(action: {
                            withAnimation(.easeInOut(duration: 0.3)) {
                                isLocationSelector.toggle()
                            }
                        }){
                            Image(systemName: "gearshape")
                                .foregroundColor(.white)
                                .scaleEffect(1.25)
                        }
                    }
                }
            }
            LocationSetView(isLocationSelector: $isLocationSelector)
        }
    }
}
#Preview {
    HomeView()
}
