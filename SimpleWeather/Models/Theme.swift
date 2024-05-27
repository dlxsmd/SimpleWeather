//
//  Theme.swift
//  SimpleWeather
//
//  Created by yuki on 2024/05/26.
//

import SwiftUI

enum Theme: String, CaseIterable, Identifiable  {
    case _01d = "01d"
    case _01n = "01n"
    case _02d = "02d"
    case _02n = "02n"
    case _03d = "03d"
    case _03n = "03n"
    case _04d = "04d"
    case _04n = "04n"
    case _09d = "09d"
    case _09n = "09n"
    case _10d = "10d"
    case _10n = "10n"
    case _11d = "11d"
    case _11n = "11n"
    case _13d = "13d"
    case _13n = "13n"
    case _50d = "50d"
    case _50n = "50n"
    var BgColor: Color {
        switch self {
        case ._01d: return .black
        case ._04d: return .white
            default:
            return .black
        }
    }
    var mainColor: Color {
        Color(rawValue)
    }
    var name: String {
        rawValue.capitalized
    }
    var id: String {
        name
    }
}
