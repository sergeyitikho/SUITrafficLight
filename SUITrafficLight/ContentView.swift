//
//  ContentView.swift
//  SUITrafficLight
//
//  Created by John Doe on 13.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redLightOpacity = 1.0
    @State private var yellowLightOpacity = 1.0
    @State private var greenLightOpacity = 1.0
    @State private var currentLightIndex = 0
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.red)
                    .opacity(currentLightIndex == 0 ? redLightOpacity : 0.3)
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.yellow)
                    .opacity(currentLightIndex == 1 ? yellowLightOpacity : 0.3)
                Circle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.green)
                    .opacity(currentLightIndex == 2 ? greenLightOpacity : 0.3)
                Spacer()
                Button(action: {
                    self.updateLight()
                }) {
                    Text("OK")
                        .foregroundColor(.white)
                        .padding(10)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
        }
    }
    
    func updateLight() {
        switch currentLightIndex {
        case 0:
            redLightOpacity = 0.3
            yellowLightOpacity = 1.0
            currentLightIndex = 1
        case 1:
            yellowLightOpacity = 0.3
            greenLightOpacity = 1.0
            currentLightIndex = 2
        case 2:
            greenLightOpacity = 0.3
            redLightOpacity = 1.0
            currentLightIndex = 0
        default:
            break
        }
    }
}



#Preview {
    ContentView()
}
