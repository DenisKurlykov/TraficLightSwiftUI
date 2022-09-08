//
//  CircleRGBView.swift
//  TraficLightSwiftUI
//
//  Created by Денис Курлыков on 08.09.2022.
//

import SwiftUI

struct CircleRGBView: View {
    var redLight: some View {
        setCircle()
    }
    var yellowLigt: some View {
        setCircle()
    }
    var greenLight: some View {
        setCircle()
    }
    
    var body: some View {
        VStack {
            redLight
            yellowLigt
            greenLight
        }
    }
    
    private func setCircle() -> some View {
        return         Circle()
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 4)
            .padding(8)
    }
}

struct CircleRedView_Previews: PreviewProvider {
    static var previews: some View {
        CircleRGBView()
    }
}
