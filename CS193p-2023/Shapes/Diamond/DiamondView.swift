//
//  DiamondView.swift
//  CS193p-2023
//
//  Created by Екатерина К on 30.11.2023.
//

import SwiftUI

struct DiamondView: View {
    var height: Double
    var color: Color
    var shading: Shading

    init(height: Double, color: Color, shading: Shading) {
        self.height = height
        self.color = color
        self.shading = shading
    }
//
//
    var body: some View {
        Group {
            switch shading {
            case .solid:
                DiamondShape()
            case .striped:
                ZStack {
                    DiamondShape()
                        .stroke(style: StrokeStyle(
                            lineWidth: 3,
                            lineCap: .round,
                            lineJoin: .round
                        )
                        )
                    DiamondShape()
                        .mask(StripedShading())
                }
            case .stroked:
                DiamondShape()
                    .stroke(style: StrokeStyle(
                        lineWidth: 3,
                        lineCap: .round,
                        lineJoin: .round
                    )
                    )
            }
        }
        .foregroundColor(color)
    }
}

struct DiamondView_Previews: PreviewProvider {
    static var previews: some View {
        DiamondView(height: 100, color: .red, shading: .stroked)
            .padding()
        DiamondView(height: 100, color: .red, shading: .solid)
            .padding()
        DiamondView(height: 100, color: .red, shading: .striped)
            .padding()

    }
}
