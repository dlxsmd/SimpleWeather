//
//  BgWeather.swift
//  SimpleWeather
//
//  Created by yuki on 2024/05/24.
//

import SwiftUI

struct BgWeather: View {
    let weatherInfo:WeatherInfo
    var body: some View {
        switch weatherInfo.weather[0].icon {
        case "01d","01n","02d","02n": return Color.orange
        case "03d","03n,","04d","04n" : return Color.gray
        case "09d","09n","10d","10n","11d","11n": return Color.blue
        case "13d","13n","50d","50n": return Color.mint
            default:
            return Color.blue
        }
    }
}
