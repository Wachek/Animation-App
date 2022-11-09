//
//  StartButton.swift
//  Animation App
//
//  Created by Вячеслав Турчак on 09.11.2022.
//

import SwiftUI

struct StartButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
            }
        .padding()
        .frame(width: 250, height: 60)
        .background(Color.green)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius:20)
            .stroke(Color.black, lineWidth: 4)
        )
    }
    }


struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton(title: "START", action: {})
    }
}
