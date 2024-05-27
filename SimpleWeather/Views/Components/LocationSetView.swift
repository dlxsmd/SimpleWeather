//
//  LocationSetView.swift
//  SimpleWeather
//
//  Created by yuki on 2024/05/27.
//

import SwiftUI

struct LocationSetView: View {
    @ObservedObject var model = WeatherApiModel.shared
    @Binding var isLocationSelector:Bool
    @State private var selectedLocation: LocationModel?
    private let maxWidth = UIScreen.main.bounds.width

    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
                .opacity(isLocationSelector ? 0.7 : 0)
                .onTapGesture {
                    withAnimation(.easeInOut(duration: 0.3)) {
                        isLocationSelector.toggle()
                    }
                }
            List{
                ForEach(locationsData) { location in
                    Button(action: {
                        selectedLocation = location
//                        UserDefaults.standard.set(selectedLocation, forKey: "Location")
                        isLocationSelector.toggle()
                        if let selectedLocation = selectedLocation {
                            model.setInfo(params: WeatherParametersModel(lat: selectedLocation.lat, lon: selectedLocation.lon))
                        }
                    }, label:{
                        Text(location.name)
                            .frame(width: 120,height: 40)
                            .padding(.all,10)
                            .cornerRadius(10)
                           // .listRowSeparator(.hidden)
                    })
                    .listRowBackground(Color.clear)
                }
            }
            .cornerRadius(10)
            .padding(.leading, maxWidth/2)
            .offset(x: isLocationSelector ? 0 : maxWidth)
        }
    }
}

#Preview {
    LocationSetView(isLocationSelector: .constant(true))
}
