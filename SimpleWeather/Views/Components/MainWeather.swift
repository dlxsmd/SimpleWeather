//
//  Mainweather.swift
//  SimpleWeather
//
//  Created by yuki on 2024/05/24.
//

import SwiftUI

struct MainWeather:View {
    let weatherInfo:WeatherInfo
    
    var body: some View {
        
        
        Image(weatherInfo.weather[0].icon)
            .resizable()
            .frame(width: 300, height: 280)
            .cornerRadius(20)
        
        
        ZStack{
            
            Rectangle()
                .frame(width: 300, height: 280)
                .foregroundColor(Color.white.opacity(0.6))
                .cornerRadius(20)
                .offset(y:30)
            
            VStack{
                
                HStack{
                    VStack(alignment:.leading){
                        Text(weatherInfo.name)
                            .font(.custom("KosugiMaru-Regular", size: 23))
                        Text(weatherInfo.weather[0].main)
                            .font(.custom("KosugiMaru-Regular", size: 20))
                    }
                    .padding(.trailing,130)
                        .padding(.leading,10)
                }
                
                VStack{
                    Text("\(Int(weatherInfo.main.temp))℃")
                        .fontWeight(.bold)
                        .font(.custom("KosugiMaru-Regular", size: 50))
                    Text("\(Int(weatherInfo.main.tempMin))℃ - \(Int(weatherInfo.main.tempMax))℃")
                        .font(.custom("KosugiMaru-Regular", size: 20))
                }
                .padding()
                
                HStack{
                    Spacer()
                    VStack(alignment:.leading){
                        Text("Precipitation: 0%")
                        Text("Humidity: \(weatherInfo.main.humidity)%")
                        Text("Wind: \(String(format: "%.1f",weatherInfo.wind.speed))km/h")
                    }.font(.custom("KosugiMaru-Regular", size: 20))
                        .padding()
                }
            }.foregroundColor(.gray)
                .frame(width: 280, height: 280)
                .padding(30)
                .background(Color.white)
                .cornerRadius(20)
        }
    }
}




