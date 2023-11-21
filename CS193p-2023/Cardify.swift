//
//  Cardify.swift
//  CS193p-2023
//
//  Created by Екатерина К on 15.11.2023.
//

import SwiftUI

struct Cardify: ViewModifier, Animatable {
    var isFaceUp: Bool {
        rotation < 90
    }
    init(isFaceUp: Bool) {
        rotation = isFaceUp ? 0 : 180
    }
    
    var rotation: Double
    var animatableData: Double {
        get { return rotation }
        set { rotation = newValue }
    }
    
    func body(content: Content) -> some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: Constant.cornerRadius)
            base.strokeBorder(lineWidth: Constant.lineWidth)
                .background(base.fill(.white))
                .overlay(content)
                .opacity(isFaceUp ? 1 : 0)
            base.fill()
                .opacity(isFaceUp ? 0 : 1)
        }
        .rotation3DEffect(.degrees(rotation), axis: (0,1,0))
     }
    
    private struct Constant {
        static let cornerRadius: CGFloat = 25
        static let lineWidth: CGFloat = 3
    }
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        modifier(Cardify(isFaceUp: isFaceUp))
    }
}
