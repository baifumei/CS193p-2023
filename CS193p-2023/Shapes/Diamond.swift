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
        let width = rect.size.width
        let height = rect.size.height
        
        var p = Path()
        p.move(to: CGPoint(
            x: 0,
            y: height / 2
        )
        )
        p.addLine(to: CGPoint(
            x: width / 2,
            y: height
        )
        )
        p.addLine(to: CGPoint(
            x: width,
            y: height / 2
        )
        )
        p.addLine(to: CGPoint(
            x: width / 2,
            y: 0
        )
        )
        p.addLine(to: CGPoint(
            x: 0,
            y: height / 2
        )
        )
        return p
    }
}




struct ContentView3: View {
    var body: some View {
        Diamond()
            .stroke(Color.blue, lineWidth: 3)
            .padding()
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3()
    }
}
