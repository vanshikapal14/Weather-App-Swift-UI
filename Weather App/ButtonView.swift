//
//  ButtonView.swift
//  Weather App
//
//  Created by Vanshika Pal on 19/12/25.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button {
            print("tapped")
        } label: {
            Text("Change time of the Day")
                .font(.system(size: 25, weight: .medium))
                .foregroundStyle(.blue)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
        }
    }
}

#Preview {
    ButtonView()
}
