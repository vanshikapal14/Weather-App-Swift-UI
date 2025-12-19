//
//  CurrentWeatherView.swift
//  Weather App
//
//  Created by Vanshika Pal on 19/12/25.
//

import SwiftUI

struct CurrentWeatherView: View {
    var body: some View {
        VStack {
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("76°C")
                .font(.system(size: 50, weight: .bold))
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}

#Preview {
    CurrentWeatherView()
}
