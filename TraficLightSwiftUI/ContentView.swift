//
//  ContentView.swift
//  TraficLightSwiftUI
//
//  Created by Денис Курлыков on 08.09.2022.
//

import SwiftUI

enum CurentColor {
    case off, red, yellow, green
}

struct ContentView: View {
    @State private var buttonTitle = "START"
    @State private var curentColor: CurentColor = .off
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack(spacing: 30) {
                ColorCircleView(
                    color: .red,
                    opacity: curentColor == .red ? 1 : 0.3
                )
                ColorCircleView(
                    color: .yellow,
                    opacity: curentColor == .yellow ? 1 : 0.3
                )
                ColorCircleView(
                    color: .green,
                    opacity: curentColor == .green ? 1 : 0.3
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
    private func nextColor() {
        switch curentColor {
        case .off:
            curentColor = .red
        case .red:
            curentColor = .yellow
        case .yellow:
            curentColor = .green
        case .green:
            curentColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
