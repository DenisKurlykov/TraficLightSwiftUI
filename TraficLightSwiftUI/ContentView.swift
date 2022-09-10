//
//  ContentView.swift
//  TraficLightSwiftUI
//
//  Created by Денис Курлыков on 08.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var opacityRed = 0.001
    @State private var opacityYellow = 0.001
    @State private var opacityGreen = 0.001
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                CircleRYGView().yellowLigt.foregroundColor(Color(red: 255, green: 0, blue: 0, opacity: opacityRed))
                CircleRYGView().yellowLigt.foregroundColor(Color(red: 255, green: 255, blue: 0, opacity: opacityYellow))
                CircleRYGView().greenLight.foregroundColor(Color(red: 0, green: 255, blue: 0, opacity: opacityGreen))
                Spacer()
                Button(action: { opacityChange() }, label: {
                    if opacityRed == 1.0 || opacityGreen == 1.0 || opacityYellow == 1.0 {
                        Text("Next")
                    } else {
                        Text("Run".uppercased())
                    }
                })
                .frame(width: 150, height: 50)
                .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 4))
                .shadow(radius: 4)
                .background(Color.blue)
                .foregroundColor(.white)
                .font(.system(size: 30, weight: .bold, design: .default))
            }
            .padding(.top, 20)
            .padding(.bottom, 40)
        }

    }
    private func opacityChange() {
        if opacityRed < 1 && opacityYellow < 1 && opacityGreen < 1 {
            opacityRed = 1
        } else if opacityRed == 1 {
            opacityRed = 0.001
            opacityYellow = 1
        } else if opacityYellow == 1 {
            opacityYellow = 0.001
            opacityGreen = 1
        } else if opacityGreen == 1 {
            opacityGreen = 0.001
            opacityRed = 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
