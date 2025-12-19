//
//  DayDetailView.swift
//  Weather App
//
//  Created by Vanshika Pal on 19/12/25.
//

import SwiftUI

struct DayDetailView: View {
    var dayDetail: DayDetail = dayDetails[1]
    
    var body: some View {
        VStack {
            Text(dayDetail.day)
               .font(.system(size: 16, weight: .medium, design: .default))
               .foregroundStyle(.white)
            Image(systemName: dayDetail.image)
               .renderingMode(.original)
               .resizable()
               .aspectRatio(contentMode: .fit)
               .frame(width: 40, height: 40)
            Text(dayDetail.temp)
               .font(.system(size: 25, weight: .medium))
               .foregroundStyle(.white)
       }
    }
}

#Preview {
    DayDetailView()
}
