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
            ShieldView()
                
        }
        .frame(width: 200, height: 200)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
