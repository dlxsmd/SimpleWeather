//
//  LocationModel.swift
//  SimpleWeather
//
//  Created by yuki on 2024/05/27.
//

import Foundation


struct LocationModel: Identifiable {
    let id = UUID()
    let lat: Double
    let lon: Double
    let name: String
}

let locationsData: [LocationModel] = [
    LocationModel(lat: 35.6895, lon: 139.6917, name: "Tokyo"),
    LocationModel(lat: 40.7128, lon: -74.0060, name: "New York"),
    LocationModel(lat: 51.5074, lon: -0.1278, name: "London"),
    LocationModel(lat: 48.8566, lon: 2.3522, name: "Paris"),
    LocationModel(lat: 37.7749, lon: -122.4194, name: "San Francisco"),
    LocationModel(lat: 55.7558, lon: 37.6176, name: "Moscow"),
]
