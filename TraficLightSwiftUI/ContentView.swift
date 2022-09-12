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
    @State private var curentColor: CurentColor = .off
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
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
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
