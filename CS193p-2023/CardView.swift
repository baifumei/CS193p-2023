//
//  CardView.swift
//  CS193p-2023
//
//  Created by Екатерина К on 15.11.2023.
//

import SwiftUI

struct CardView: View {
    typealias Card = MemorizeGame<String>.Card
    var card: Card
    
    init(_ card: MemorizeGame<String>.Card) {
        self.card = card
    }
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: Constants.cornerRadius)
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: Constants.lineWidth)
                Text(card.content)
                    .font(.system(size: Constants.FontSize.lagest))
                    .minimumScaleFactor(Constants.FontSize.scaleFactor)
                    .aspectRatio(1, contentMode: .fit)
                    .padding(Constants.inset)
            }.opacity(card.isFaceUp ? 1 : 0)
            base.fill().opacity(card.isFaceUp ? 0 : 1)
        }
        .opacity(card.isFaceUp || !card.isMatched ? 1 : 0)
    }
    
    
    private struct Constants {
        static let cornerRadius: CGFloat = 20
        static let lineWidth:  CGFloat = 3
        static let inset: CGFloat = 5
        struct FontSize {
            static let lagest: CGFloat = 200
            static let smallest: CGFloat = 1
            static let scaleFactor = smallest / lagest
        }
    }
}







struct CardView_Previews: PreviewProvider {
    typealias Card = MemorizeGame<String>.Card
    
    static var previews: some View {
        VStack {
            HStack {
                CardView(Card(isFaceUp: true, content: "*", id: "1a"))
                CardView(Card(content: "*", id: "1b"))
            }
            HStack {
                CardView(Card(content: "*", id: "1a"))
                CardView(Card(isFaceUp: true, content: "*", id: "1b"))
            }
        }
        .padding()
        .foregroundColor(.pink)
    }
}
