//
//  ContentView.swift
//  CS193p-2023
//
//  Created by Екатерина К on 02.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView()
            CardView(isFaceUp: true)
        }
        .foregroundColor(.green)
        .padding()
    }
}






struct CardView: View {
    @State var isFaceUp = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 25)
            if isFaceUp == true {
                base.fill(.white)
                base.strokeBorder(lineWidth: 3)
                Text("🐲").font(.largeTitle)

            } else {
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()         // isFaceUp = !isFaceUp
        }
    }
}





















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
