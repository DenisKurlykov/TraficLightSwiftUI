//
//  ContentView.swift
//  TraficLightSwiftUI
//
//  Created by Денис Курлыков on 08.09.2022.
//

import SwiftUI

enum CurentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var buttonTitle = "START"
    
    @State private var curentLight = CurentLight.red
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    private func nextColor() {
        let lightIsOn = 1.0
        let lightIsOff = 0.3
        
        switch curentLight {
        case .red:
            redLightState = lightIsOn
            greenLightState = lightIsOff
            curentLight = .yellow
        case .yellow:
            redLightState = lightIsOff
            yellowLightState = lightIsOn
            curentLight = .green
        case .green:
            yellowLightState = lightIsOff
            greenLightState = lightIsOn
            curentLight = .red
        }
    }
}
  
extension ContentView {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 20) {
                ColorCircleView(
                    color: .red,
                    opacity: redLightState
                )
                ColorCircleView(
                    color: .yellow,
                    opacity: yellowLightState
                )
                ColorCircleView(
                    color: .green,
                    opacity: greenLightState
                )
                
                Spacer()
                
                StartButtonView(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                        nextColor()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
