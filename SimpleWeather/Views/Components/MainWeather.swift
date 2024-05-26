//
//  Mainweather.swift
//  SimpleWeather
//
//  Created by yuki on 2024/05/24.
//

import SwiftUI

struct MainWeather:View {
     let model = WeatherApiModel.shared
    let weatherInfo:WeatherInfo
    
    var body: some View {
        
            ZStack{
                Color.black
                Rectangle()
                    .frame(width: 300, height: 280)
                    .foregroundColor(Color.white.opacity(0.6))
                    .cornerRadius(20)
                    .offset(x: 0, y: 50)
                
                VStack{
                    
                    HStack{
                        VStack(alignment:.leading){
                            Text(weatherInfo.name)
                                .font(.title)
                            Text(weatherInfo.weather[0].main)
                                .font(.title2)
                        }
                        Spacer()
                            .padding(.leading,30)
                    }
                    
                    VStack{
                        Text("\(Int(weatherInfo.main.temp))℃")
                            .fontWeight(.bold)
                            .font(.system(size: 50))
                        Text("\(Int(weatherInfo.main.tempMin))℃ - \(Int(weatherInfo.main.tempMax))℃")
                            .font(.caption)
                    }
                    .padding()
                    
                    HStack{
                        Spacer()
                        VStack(alignment:.leading){
                            Text("Precipitation: 0%")
                            Text("Humidity: \(weatherInfo.main.humidity)%")
                            Text("Wind: \(weatherInfo.wind.speed)km/h")
                        }.font(.caption)
                            .padding()
                        // .padding(.trailing,10)
                    }
                }.foregroundColor(.purple)
                    .frame(width: 280, height: 280)
                    .padding(30)
                    .background(Color.white)
                    .cornerRadius(20)
            }
            
        }
}


