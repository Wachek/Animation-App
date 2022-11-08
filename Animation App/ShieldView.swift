//
//  ShieldView.swift
//  Animation App
//
//  Created by Вячеслав Турчак on 08.11.2022.
//

import SwiftUI

struct ShieldView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
        }
    }
}

struct ShieldView_Previews: PreviewProvider {
    static var previews: some View {
        ShieldView()
            .frame(width: 200, height: 200)
    }
}
