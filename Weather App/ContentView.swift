//
//  ContentView.swift
//  Weather App
//
//  Created by Vanshika Pal on 19/12/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
            ZStack {
                
                BackgroundView(isNight: $isNight)
                
                VStack {
                    LocationView(cityName: "Cupertino, CA")
                    
                    Spacer()
                    
                    CurrentWeatherView(image: isNight ? "moon.stars.fill" :"cloud.sun.fill",
                                       temp: isNight ? "18" : "76")
                    
                    Spacer()
                    
                    HStack(spacing: 20) {
                        ForEach(dayDetails) { day in
                            DayDetailView(dayDetail: day)
                        }
                    }
                    
                    Spacer()
                    Button {
                        isNight.toggle()
                    } label: {
                        ButtonView(title: "Change Day Time",
                                   textColor: .blue,
                                   backgroundColor: .white)
                    }

                    
                }
                .padding()
            }
    }
}

struct BackgroundView: View {
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,
                                                   isNight ? .gray : Color(.skyBlue)]),
                       startPoint: .topTrailing, endPoint: .bottom)
        .edgesIgnoringSafeArea(.all)
    }
}


struct ButtonView: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
            Text(title)
                .font(.system(size: 25, weight: .medium))
                .foregroundStyle(textColor)
                .padding()
                .background(backgroundColor)
                .cornerRadius(10)
    }
}

struct LocationView: View {
    
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.largeTitle).bold()
            .foregroundStyle(.white)
            .padding()
    }
}

struct CurrentWeatherView: View {
    var image: String
    var temp: String
    
    var body: some View {
        Image(systemName: image)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
        Text("\(temp)°")
            .font(.system(size: 50, weight: .bold))
            .fontWeight(.bold)
            .foregroundStyle(.white)
    }
}
#Preview {
    ContentView()
}
