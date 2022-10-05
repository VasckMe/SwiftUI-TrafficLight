//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Apple Macbook Pro 13 on 5.10.22.
//

import SwiftUI

struct ButtonView: View {
    
    @State var completion: () -> Void
               
    var body: some View {
        ZStack {
            Button() {
                completion()
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
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView {}
    }
}
