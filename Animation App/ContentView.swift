//
//  ContentView.swift
//  Animation App
//
//  Created by Вячеслав Турчак on 08.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
