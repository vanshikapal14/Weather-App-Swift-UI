//
//  LocationView.swift
//  Weather App
//
//  Created by Vanshika Pal on 19/12/25.
//

import SwiftUI

struct LocationView: View {
    var body: some View {
        VStack {
            Text("Cupertino, CA")
                .font(.largeTitle).bold()
                .foregroundStyle(.white)
                .padding()
        }
    }
}

#Preview {
    LocationView()
}
