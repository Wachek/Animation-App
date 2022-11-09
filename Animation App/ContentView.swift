//
//  ContentView.swift
//  Animation App
//
//  Created by Вячеслав Турчак on 08.11.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var showAnimation = false
    private var title = "Start Animation"
    
    var body: some View {

        VStack {
            Spacer()
            ZStack {
                SwordView()
                    .rotationEffect(.degrees(135))
                    .frame(width: 250, height: 250)
                SwordView()
                    .rotationEffect(.degrees(-135))
                    .frame(width: 250, height: 250)
                ShieldView()
                    .frame(width: 200, height: 200)
                    .offset(y: 15)

            }
            .padding()
            Spacer()
            StartButton(title: title, action: {})
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
