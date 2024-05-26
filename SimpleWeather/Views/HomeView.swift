//
//  HomeView.swift
//  SimpleWeather
//
//  Created by yuki on 2024/05/24.
//
import SwiftUI

struct HomeView: View {
    @ObservedObject var model = WeatherApiModel.shared
    var body: some View {
        VStack {
            
            if let weatherInfo = model.weatherInfo {
            MainWeather(weatherInfo: weatherInfo)
            }
        }.onAppear {
            model.setInfo(params: WeatherParametersModel(lat: 35.6895, lon: 139.6917))
        }
    }
}
#Preview {
    HomeView()
}
