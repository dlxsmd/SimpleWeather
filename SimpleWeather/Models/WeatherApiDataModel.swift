//
//  WeatherApiDataModel.swift
//  SimpleWeather
//
//  Created by yuki on 2024/05/24.
//

import UIKit




import Foundation

// MARK: - WeatherInfo
struct WeatherInfo: Codable {
    let weather: [Weather]
    let main: Main
    let wind: Wind
    let timezone, id: Int
    let name: String
    
    init(weather: [Weather], main: Main, wind: Wind, timezone: Int, id: Int, name: String) {
        self.weather = weather
        self.main = main
        self.wind = wind
        self.timezone = timezone
        self.id = id
        self.name = name

    }
}


// MARK: - Main
struct Main: Codable {
    let temp, tempMin, tempMax: Double
    let humidity: Int

    enum CodingKeys: String, CodingKey {
        case temp
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case humidity
    }
    
    init(temp: Double, tempMin: Double, tempMax: Double, humidity: Int) {
        self.temp = temp
        self.tempMin = tempMin
        self.tempMax = tempMax
        self.humidity = humidity
    }
}

// MARK: - Weather
struct Weather: Codable {
    let id: Int
    let main, icon: String
    
    init(id: Int, main: String, icon: String) {
        self.id = id
        self.main = main
        self.icon = icon
    }
}

// MARK: - Wind
struct Wind: Codable {
    let speed: Double
    let deg: Int
    
    init(speed: Double, deg: Int) {
        self.speed = speed
        self.deg = deg
    }
}
