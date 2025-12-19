//
//  DayDetail.swift
//  Weather App
//
//  Created by Vanshika Pal on 19/12/25.
//

import SwiftUI

struct DayDetail: Identifiable, Hashable {
    var id: UUID = .init()
    var day: String
    var image: String
    var temp: String
}

var dayDetails = [
    DayDetail(day: "TUE", image: "cloud.sun.fill", temp: "74°"),
    DayDetail(day: "WED", image: "sun.max.fill", temp: "70°"),
    DayDetail(day: "THU", image: "sun.dust.fill", temp: "65°"),
    DayDetail(day: "FRI", image: "sunset.fill", temp: "60°"),
    DayDetail(day: "SAT" , image: "sun.rain.fill", temp: "75°"),
    DayDetail(day: "SUN", image: "sun.snow.fill", temp: "73°")
]
