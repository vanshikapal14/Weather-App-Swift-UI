//
//  ContentView.swift
//  Weather App
//
//  Created by Vanshika Pal on 19/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            ZStack {
                BackgroundView()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    LocationView()
                    
                    Spacer()
                    
                    CurrentWeatherView()
                        .padding(.bottom, 40)
                    
                    Spacer()
                    
                    HStack(spacing: 20) {
                        ForEach(dayDetails) { day in
                            DayDetailView(dayDetail: day)
                        }
                    }
                    
                    Spacer()
                    ButtonView()

                    
                }
                .padding()
            }
    }
}

#Preview {
    ContentView()
}
