//
//  CardView.swift
//  CS193p-2023
//
//  Created by Екатерина К on 07.11.2023.
//

import SwiftUI

struct CardView: View {
    typealias Card = MemoryGame<String>.Card
    var card: Card
    
    init(_ card: Card) {
        self.card = card
    }
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: Constant.cornerRadius)
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: Constant.lineWidth)
                Text(card.content)
                    .font(.system(size: Constant.FontSize.largest))
                    .minimumScaleFactor(Constant.FontSize.scaleFactor)
                    .aspectRatio(1, contentMode: .fit)
                    .padding(Constant.inset)
            }.opacity(card.isFaceUp ? 1 : 0)
            base.fill().opacity(card.isFaceUp ? 0 : 1)
        }
        .opacity(card.isFaceUp || !card.isMatched ? 1 : 0)
    }
    
    
    
    private struct Constant {
        static let cornerRadius: CGFloat = 25
        static let lineWidth: CGFloat = 3
        static let inset: CGFloat = 5
        struct FontSize {
            static let largest: CGFloat = 200
            static let smallest: CGFloat = 10
            static let scaleFactor: CGFloat = smallest / largest
        }
    }
}

















//I can make my preview in the code below
struct CardView_Previews: PreviewProvider {
    typealias Card = MemoryGame<String>.Card
    
    static var previews: some View {
        VStack {
            HStack {
                CardView(Card(isFaceUp: true, content: "X", id: "test1"))
                CardView(Card(isFaceUp: true, content: "X", id: "test1"))
            }
            HStack {
                CardView(Card(content: "X", id: "test1"))
                CardView(Card(content: "X", id: "test1"))
            }
        }
            .padding()
            .foregroundColor(.pink)
    }
}
