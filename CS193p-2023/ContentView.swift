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
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
        }
        .foregroundColor(.green)
        .padding()
    }
}






struct CardView: View {
    var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            if isFaceUp == true {
                RoundedRectangle(cornerRadius: 25).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 25).strokeBorder(lineWidth: 3)
                Text("🐲").font(.largeTitle)

            } else {
                RoundedRectangle(cornerRadius: 25)
            }
        }
    }
}





















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
