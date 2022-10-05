//
//  CircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Apple Macbook Pro 13 on 4.10.22.
//

import SwiftUI

struct CircleView: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .opacity(opacity)
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                .frame(width: 150, height: 150)
//                .opacity(opacity)
        }
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .red, opacity: 1)
    }
}
