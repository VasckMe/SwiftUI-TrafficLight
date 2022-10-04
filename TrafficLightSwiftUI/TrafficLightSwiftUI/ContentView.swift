//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Apple Macbook Pro 13 on 4.10.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black)
            VStack {
                CircleView(color: .red)
                CircleView(color: .yellow)
                CircleView(color: .green)
                
                Button() {
        
                } label: {
                    Text("Next")
                }
                .frame(width: 250, height: 80)
                .foregroundColor(.orange)
            }
            
            
            
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
