//
//  Oval.swift
//  CS193p-2023
//
//  Created by Екатерина К on 30.11.2023.
//

import SwiftUI

struct Oval: Shape {
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
        Oval()
            .stroke(Color.blue, lineWidth: 3)
            .padding()
    }
}

struct Oval_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
