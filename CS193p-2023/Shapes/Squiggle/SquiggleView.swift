//
//  SquiggleView.swift
//  CS193p-2023
//
//  Created by Екатерина К on 30.11.2023.
//

import SwiftUI

struct SquiggleView: View {
    var height: Double
    var color: Color
    var shading: Shading
    
    init(height: Double, color: Color, shading: Shading) {
        self.height = height
        self.color = color
        self.shading = shading
    }
    
    var body: some View {
        Group {
            switch shading {
            case .stroked:
                SquiggleShape()
                    .stroke(style: StrokeStyle(lineWidth: 3))
            case .striped:
                ZStack {
                    SquiggleShape()
                        .stroke(style: StrokeStyle(lineWidth: 3))
                    
                    SquiggleShape()
                        .mask(StripedShading())
                }
            case .solid:
                SquiggleShape()
            }
        }
        .foregroundColor(color)
    }
}

struct SquiggleView_Previews: PreviewProvider {
    static var previews: some View {
        SquiggleView(height: 100, color: .blue, shading: .solid)
        SquiggleView(height: 100, color: .blue, shading: .striped)
        SquiggleView(height: 100, color: .blue, shading: .stroked)
    }
}
