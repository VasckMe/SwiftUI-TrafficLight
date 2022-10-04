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
                
                Spacer()
                
                Button() {
        
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
            .padding(.top, 100)
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
