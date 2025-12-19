//
//  BackgroundView.swift
//  Weather App
//
//  Created by Vanshika Pal on 19/12/25.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.blue, Color(.skyBlue)]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    BackgroundView()
}
