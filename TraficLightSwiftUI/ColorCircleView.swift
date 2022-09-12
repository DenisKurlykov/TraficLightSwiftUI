//
//  ColorCircleView.swift
//  TraficLightSwiftUI
//
//  Created by Денис Курлыков on 12.09.2022.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacity: 1)
    }
}
    
