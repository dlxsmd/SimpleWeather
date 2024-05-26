//
//  WeatherParametersModel.swift
//  SimpleWeather
//
//  Created by yuki on 2024/05/24.
//

import Foundation

struct WeatherParametersModel:Codable{
    let lat: Double
    let lon: Double
    
    init(lat: Double, lon: Double) {
        self.lat = lat
        self.lon = lon
    }
    
}
