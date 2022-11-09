//
//  ShieldView.swift
//  Animation App
//
//  Created by Вячеслав Турчак on 08.11.2022.
//

import SwiftUI

struct ShieldView: View {
    var body: some View {
        
        ZStack {
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = geometry.size.height
                let size = min(width, height)
                let middle = size / 2
                let nearPoint = size * 0.15
                let quarter = size / 4
                
                Path { path in
                    path.move(to: CGPoint(x: middle, y: 0))
                    path.addQuadCurve(to: CGPoint(x: 0, y: nearPoint), control: CGPoint(x: quarter, y: nearPoint * 1.2))
                    path.addQuadCurve(to: CGPoint(x: middle, y: size), control: CGPoint(x: nearPoint / 2, y: size * 0.7))
                    path.addQuadCurve(to: CGPoint(x: size, y: nearPoint), control: CGPoint(x: size - (nearPoint / 2), y: size * 0.7))
                    path.addQuadCurve(to: CGPoint(x: middle, y: 0), control: CGPoint(x: quarter * 3, y: nearPoint * 1.2))
                    path.addLine(to: CGPoint(x: middle, y: size))
                }
                .fill(Color.gray)
            }
            
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = geometry.size.height
                let size = min(width, height)
                let middle = size / 2
                let nearPoint = size * 0.15
                let quarter = size / 4
                
                Path { path in
                    path.move(to: CGPoint(x: middle, y: 0))
                    path.addQuadCurve(to: CGPoint(x: 0, y: nearPoint), control: CGPoint(x: quarter, y: nearPoint * 1.2))
                    path.addQuadCurve(to: CGPoint(x: middle, y: size), control: CGPoint(x: nearPoint / 2, y: size * 0.7))
                    path.addQuadCurve(to: CGPoint(x: size, y: nearPoint), control: CGPoint(x: size - (nearPoint / 2), y: size * 0.7))
                    path.addQuadCurve(to: CGPoint(x: middle, y: 0), control: CGPoint(x: quarter * 3, y: nearPoint * 1.2))
                    path.addLine(to: CGPoint(x: middle, y: size))
                }
                
                .stroke(Color.black, lineWidth: 3)
            }
        }
    }
}

struct ShieldView_Previews: PreviewProvider {
    static var previews: some View {
        ShieldView()
            .frame(width: 200, height: 200)
    }
}
