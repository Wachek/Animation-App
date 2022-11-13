//
//  ContentView.swift
//  Animation App
//
//  Created by Вячеслав Турчак on 08.11.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showAnimation = false
//    private var title = "Start Animation"
    
    var body: some View {

        VStack {
            Spacer()
            ZStack {
                SwordView()
                    .rotationEffect(.degrees(135))
                    .frame(width: 250, height: 250)
                    .offset(x: showAnimation ? 0 : -UIScreen.main.bounds.width)
                    .offset(y: showAnimation ? 0 : -UIScreen.main.bounds.height / 2)
                    .animation(.default)
                SwordView()
                    .rotationEffect(.degrees(-135))
                    .frame(width: 250, height: 250)
                    .offset(x: showAnimation ? 0 : UIScreen.main.bounds.width)
                    .offset(y: showAnimation ? 0 : -UIScreen.main.bounds.height / 2)
                    .animation(.default)
                ShieldView()
                    .frame(width: 200, height: 200)
                    .offset(y: 15)
                    .scaleEffect(showAnimation ? 1 : 1.2)

//                    .rotationEffect(.degrees(showAnimation ? 360 : 0))
                    .animation(.default)

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
