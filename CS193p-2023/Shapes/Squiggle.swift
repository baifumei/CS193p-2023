//
//  Squiggle.swift
//  CS193p-2023
//
//  Created by Екатерина К on 30.11.2023.
//

import SwiftUI
import CoreGraphics

struct Squiggle: Shape {
    let angle1: Angle = .degrees(0)
    let endAngle1: Angle = .degrees(140)
    
    let angle2: Angle = Angle(degrees: 0)
    let endAngle2: Angle = .degrees(220)
    
    let angle3: Angle = Angle(degrees: 140)
    let endAngle3: Angle = .degrees(-40)
    
    let angle4: Angle = Angle(degrees: 140)
    let endAngle4: Angle = .degrees(40)
    
    
    func path(in rect: CGRect) -> Path {
        let radius = min(rect.width, rect.height) / 4

        var p = Path()
        //first arc
        let center1 = CGPoint(x: rect.midX - (rect.midX / 2) + 19, y: rect.midY)
        let startAngle1 = angle1 - .degrees(40)
        let leftArc = CGPoint(
                    x: center1.x + radius * cos(startAngle1.radians),
                    y: center1.y + radius * sin(startAngle1.radians)
                )
        p.move(to: leftArc)
        p.addArc(center: center1, radius: radius, startAngle: startAngle1, endAngle: endAngle1, clockwise: true)
        
        //second arc
        let center2 = CGPoint(x: rect.midX - (rect.midX / 2) + 20, y: rect.midY * 6.6 / 5)
        let startAngle2 = angle1 - .degrees(40)
        p.addArc(center: center2, radius: radius, startAngle: endAngle2, endAngle: startAngle2, clockwise: false)
        
        //third arc
        let center3 = CGPoint(x: rect.midX + (rect.midX / 2) - 19, y: rect.midY)
        let startAngle3 = angle3
        p.addArc(center: center3, radius: radius, startAngle: startAngle3, endAngle: endAngle3, clockwise: true)
        
        //forth arc
        let center4 = CGPoint(x: rect.midX + (rect.midX / 2) - 20, y: rect.midY * 5 / 7.36)
        let startAngle4 = angle4
        p.addArc(center: center4, radius: radius, startAngle: endAngle4, endAngle: startAngle4, clockwise: false)
        
        
        
        
        
        return p
    }
}

struct ContentView2: View {
    var body: some View {
        Squiggle()
            .stroke(Color.blue, lineWidth: 3)
            .padding()
    }
}
struct Squiggle_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
