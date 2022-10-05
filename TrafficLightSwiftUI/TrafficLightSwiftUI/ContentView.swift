//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Apple Macbook Pro 13 on 4.10.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redAlpha: Double = 0.2
    @State private var yellowAlpha: Double = 0.2
    @State private var greenAlpha: Double = 0.2
    
    @State private var stage: TrafficLightStage? = .red
    
    var body: some View {
        ZStack {
            Color(.black)
            VStack {
                CircleView(color: .red, opacity: redAlpha)
                CircleView(color: .yellow, opacity: yellowAlpha)
                CircleView(color: .green, opacity: greenAlpha)
                
                Spacer()
                
                Button() {
                    trafficLightChanger()
                } label: {
                    Text("Next")
                        .bold()
                        .font(.system(size: 30))
                }
                .frame(width: 250, height: 80)
                .foregroundColor(.white)
                .background(Color.orange)
                .cornerRadius(30)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.white, lineWidth: 5)
                )
            }
            .padding(.vertical, 100)
        }
        .ignoresSafeArea()
    }
    
    
    func trafficLightChanger() {
        redAlpha = 0.2
        yellowAlpha = 0.2
        greenAlpha = 0.2
        
        switch stage {
        case .red:
            redAlpha = 1.0
            stage = .redYellow
        case .redYellow:
            redAlpha = 1.0
            yellowAlpha = 1.0
            stage = .green
        case .green:
            greenAlpha = 1.0
            stage = .yellow
        case .yellow:
            yellowAlpha = 1.0
            stage = .red
        case .none:
            break
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
