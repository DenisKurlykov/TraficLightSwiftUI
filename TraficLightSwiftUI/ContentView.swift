//
//  ContentView.swift
//  TraficLightSwiftUI
//
//  Created by Денис Курлыков on 08.09.2022.
//

import SwiftUI
enum CurentLight {
    case off, red, yellow, green
}

struct ContentView: View {
    @State private var curentLight: CurentLight = .off
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                ColorCircleView(
                    color: .red,
                    opacity: curentLight == .red ? 1 : 0.3
                )
                ColorCircleView(
                    color: .yellow,
                    opacity: curentLight == .yellow ? 1 : 0.3
                )
                ColorCircleView(
                    color: .green,
                    opacity: curentLight == .green ? 1 : 0.3
                )
            }

        }

    }
    private func nextColor() {
        switch curentLight {
        case .off: curentLight = .red
        case .red: curentLight = .yellow
        case .yellow: curentLight = .green
        case .green: curentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
