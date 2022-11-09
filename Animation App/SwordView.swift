//
//  SwordView.swift
//  Animation App
//
//  Created by Вячеслав Турчак on 09.11.2022.
//

import SwiftUI

struct SwordView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(width, height)
            let middle = size / 2
            let smallStep = size / 12
            let oneOfFive = size / 5
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: 0))
                path.addLine(to: CGPoint(x: middle - smallStep, y: smallStep))
                path.addLine(to: CGPoint(x: middle - smallStep, y: oneOfFive * 3))
                path.addLine(to: CGPoint(x: middle + smallStep, y: oneOfFive * 3))
                path.addLine(to: CGPoint(x: middle + smallStep, y: smallStep))
                path.addLine(to: CGPoint(x: middle, y: 0))
                path.addLine(to: CGPoint(x: middle, y: oneOfFive * 3))
            }
            .fill(Color(red: 134 / 255, green: 195 / 255, blue: 241 / 255))
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: 0))
                path.addLine(to: CGPoint(x: middle - smallStep, y: smallStep))
                path.addLine(to: CGPoint(x: middle - smallStep, y: oneOfFive * 3))
                path.addLine(to: CGPoint(x: middle + smallStep, y: oneOfFive * 3))
                path.addLine(to: CGPoint(x: middle + smallStep, y: smallStep))
                path.addLine(to: CGPoint(x: middle, y: 0))
                path.addLine(to: CGPoint(x: middle, y: oneOfFive * 3))
            }
            .stroke(Color.black, lineWidth: 3)
            
            Path { path in
                path.move(to: CGPoint(x: middle - (smallStep * 2), y: oneOfFive * 3))
                path.addLine(to: CGPoint(x: middle + (smallStep * 2), y: oneOfFive * 3))
                path.addLine(to: CGPoint(x: middle + (smallStep * 2), y: oneOfFive * 3 + smallStep))
                path.addLine(to: CGPoint(x: middle - (smallStep * 2), y: oneOfFive * 3 + smallStep))
                path.addLine(to: CGPoint(x: middle - (smallStep * 2), y: oneOfFive * 3))
                path.move(to: CGPoint(x: middle - (smallStep / 2), y: oneOfFive * 3 + smallStep))
                path.addLine(to: CGPoint(x: middle - (smallStep / 2), y: size))
                path.addLine(to: CGPoint(x: middle + (smallStep / 2), y: size))
                path.addLine(to: CGPoint(x: middle + (smallStep / 2), y: oneOfFive * 3 + smallStep))
            }
            .fill(Color.brown)
            
            Path { path in
                path.move(to: CGPoint(x: middle - (smallStep * 2), y: oneOfFive * 3))
                path.addLine(to: CGPoint(x: middle + (smallStep * 2), y: oneOfFive * 3))
                path.addLine(to: CGPoint(x: middle + (smallStep * 2), y: oneOfFive * 3 + smallStep))
                path.addLine(to: CGPoint(x: middle - (smallStep * 2), y: oneOfFive * 3 + smallStep))
                path.addLine(to: CGPoint(x: middle - (smallStep * 2), y: oneOfFive * 3))
                path.move(to: CGPoint(x: middle - (smallStep / 2), y: oneOfFive * 3 + smallStep))
                path.addLine(to: CGPoint(x: middle - (smallStep / 2), y: size))
                path.addLine(to: CGPoint(x: middle + (smallStep / 2), y: size))
                path.addLine(to: CGPoint(x: middle + (smallStep / 2), y: oneOfFive * 3 + smallStep))
            }
            .stroke(Color.black, lineWidth: 3)
        }
    }
}

struct SwordView_Previews: PreviewProvider {
    static var previews: some View {
        SwordView()
            .frame(width: 200, height: 200)
    }
}
