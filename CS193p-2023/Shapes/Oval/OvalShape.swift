//
//  Oval.swift
//  CS193p-2023
//
//  Created by Екатерина К on 30.11.2023.
//

import SwiftUI

struct OvalShape: SwiftUI.Shape {
    func path(in rect: CGRect) -> Path {
        var p = Path()
        p.addRoundedRect(
            in: rect,
            cornerSize: CGSize(
                width: rect.width,
                height: rect.height
            )
        )
        return p
    }
}

struct ContentView1: View {
    var body: some View {
        OvalShape()
            .stroke(Color.blue, lineWidth: 3)
    }
}

struct Oval_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
