//
//  StripedShading.swift
//  CS193p-2023
//
//  Created by Екатерина К on 30.11.2023.
//

import SwiftUI

struct StripedShading: SwiftUI.Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: .zero)
            let spacing = rect.width * 0.03
            var currentX = 0.0 {
                didSet {
                    path.move(to: CGPoint(x: currentX, y: 0))
                }
            }
            while currentX < rect.width {
                path.addLine(to: CGPoint(x: currentX, y: rect.maxY))
                currentX += spacing
            }
        }.strokedPath(StrokeStyle(lineWidth: 2))
    }
}




struct StripedShading_Previews: PreviewProvider {
    static var previews: some View {
        StripedShading()
    }
}
