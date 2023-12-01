//
//  OvalView.swift
//  CS193p-2023
//
//  Created by Екатерина К on 30.11.2023.
//

import SwiftUI

struct OvalView: View {
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
            case .solid:
                OvalShape()
            case .striped:
                ZStack {
                    OvalShape()
                        .stroke(style: StrokeStyle(lineWidth: 3))
                    
                    OvalShape()
                        .mask(StripedShading())
                }
            case .stroked:
                OvalShape().stroke(style: StrokeStyle(lineWidth: 3))
            }
        }.foregroundColor(color)
    }
}

struct OvalView_Previews: PreviewProvider {
    static var previews: some View {
        OvalView(height: 80, color: .purple, shading: .solid)
            .padding()
        OvalView(height: 80, color: .purple, shading: .striped)
            .padding()
        OvalView(height: 80, color: .purple, shading: .stroked)
            .padding()
    }
}
