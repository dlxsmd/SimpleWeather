//
//  WeatherApiModel.swift
//  SimpleWeather
//
//  Created by yuki on 2024/05/24.
//

import UIKit
import Alamofire

class WeatherApiModel:ObservableObject {
    private let apiUrl = "https://api.openweathermap.org/data/2.5/weather?appid=2c34431983a0cd1800e2913416645426&units=metric&lang=ja"
    
    public static let shared = WeatherApiModel()
    @Published var weatherInfo: WeatherInfo?
    
    
    public func fetch(params:WeatherParametersModel,completion:@escaping(WeatherInfo) -> Void){
        
        AF.request(apiUrl,method: .get,parameters:params)
            .responseData{ response in
                switch response.result {
                case .success(let data):
                    do {
                        let decoder = JSONDecoder()
                        let WeatherInfo = try decoder.decode(WeatherInfo.self, from: data)
                        DispatchQueue.main.async {
                            self.weatherInfo = WeatherInfo
                            print(WeatherInfo)
                        }
                    } catch {
                        print("error: \(error)")
                    }
                case .failure(let error):
                    print("error: \(error)")
                }
            }
    }
    public func setInfo(params:WeatherParametersModel){
        fetch(params:params){ array in
            DispatchQueue.main.async {
                self.weatherInfo = array
            }
        }
    }
}
