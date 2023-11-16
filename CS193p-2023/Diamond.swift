//
//  Diamond.swift
//  CS193p-2023
//
//  Created by Екатерина К on 16.11.2023.
//

import SwiftUI
import CoreGraphics

struct Diamond: Shape {
    func path(in rect: CGRect) -> Path {
        
        //the radius of circumcircle
        let radius = min(rect.width, rect.height) / 2
        
        //the center of circumcircle
        let center = CGPoint(x: rect.midX, y: rect.midY)
        
        // Angle between the vertices of a diamond
        let angleSmallIncrease = .pi / 4.0
        let angleBigIncrease = .pi / 2.0
        
        //The first vertice
        var angle = angleSmallIncrease - .pi / 2.0
        let startPoint = CGPoint(
            x: center.x + radius * cos(angle),
            y: center.y + radius * sin(angle)
        )
        
        var p = Path()
        p.move(to: startPoint)
        
        var countAngle = 1
        while countAngle != 5 {
            if countAngle == 1 || countAngle == 4 {
                angle += angleSmallIncrease
                let nextPoint = CGPoint(
                    x: center.x + radius * cos(angle),
                    y: center.y + radius * sin(angle)
                )
                p.addLine(to: nextPoint)
            } else if countAngle == 2 || countAngle == 3 {
                angle += angleBigIncrease
                let nextPoint = CGPoint(
                    x: center.x + radius * cos(angle),
                    y: center.y + radius * sin(angle)
                )
                p.addLine(to: nextPoint)
            }
            countAngle += 1
        }
        
        p.addLine(to: startPoint)
        
    
        return p
    }
    
}






struct ContentView: View {
    var body: some View {
        Diamond()
            .stroke(Color.blue, lineWidth: 3)
            .padding()
    }
}




struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
