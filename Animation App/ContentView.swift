//
//  ContentView.swift
//  Animation App
//
//  Created by Вячеслав Турчак on 08.11.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showAnimation = false
    
    var body: some View {
        
        VStack {
            Spacer()
            ZStack {
                SwordView()
                    .rotationEffect(.degrees(135))
                    .frame(width: 250, height: 250)
                    .offset(x: showAnimation ? 0 : -UIScreen.main.bounds.width, y: showAnimation ? 0 : -UIScreen.main.bounds.height / 2)
                    .animation(.easeOut(duration: 0.5))
                SwordView()
                    .rotationEffect(.degrees(-135))
                    .frame(width: 250, height: 250)
                    .offset(x: showAnimation ? 0 : UIScreen.main.bounds.width, y: showAnimation ? 0 : -UIScreen.main.bounds.height / 2)
                    .animation(.easeOut(duration: 0.5))
                ShieldView()
                    .frame(width: 200, height: 200)
                    .offset(y: 15)
                    .scaleEffect(showAnimation ? 1 : 1.2)
                    .animation(.interpolatingSpring(
                        mass: 1.0,
                        stiffness: 100,
                        damping: 10,
                        initialVelocity: 0
                    ).delay(0.5)
                    )
            }
            .padding()
            Spacer()
            StartButton(title: showAnimation ? "Hide" : "Show", action: startAnimation
            )
        }
    }
    
    private func startAnimation() {
        showAnimation.toggle()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
