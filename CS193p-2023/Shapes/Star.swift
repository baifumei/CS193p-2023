//
//  Star.swift
//  CS193p-2023
//
//  Created by Екатерина К on 30.11.2023.
//

import SwiftUI
import CoreGraphics

struct Star: Shape {
    func path(in rect: CGRect) -> Path {
        
        let radius = min(rect.width, rect.height) / 2
        let smallRadius = radius * 4 / 5
        
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let angleIncrease = .pi / 16.0
        
        var angle = angleIncrease
        let startPoint = CGPoint(
            x: center.x + smallRadius * cos(angle),
            y: center.y + smallRadius * sin(angle)
        )
        var p = Path()
        p.move(to: startPoint)
        
        for i in 0...32 {
            if i % 2 == 0 {
                angle += angleIncrease
                let nextPoint = CGPoint(
                    x: center.x + radius * cos(angle),
                    y: center.y + radius * sin(angle)
                )
                p.addLine(to: nextPoint)
            } else {
                angle += angleIncrease
                let nextPoint = CGPoint(
                    x: center.x + smallRadius * cos(angle),
                    y: center.y + smallRadius * sin(angle)
                )
                p.addLine(to: nextPoint)
            }
        }
        
        return p
    }
}



struct ContentView1: View {
    var body: some View {
        Star()
            .stroke(Color.blue, lineWidth: 3)
            .padding()
    }
}




struct ContentView1_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView1()
    }
}
