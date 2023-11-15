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
                Pie(endAngle: .degrees(90))
                    .opacity(Constant.Pie.opacity)
                    .overlay(
                        Text(card.content)
                            .font(.system(size: Constant.FontSize.largest))
                            .minimumScaleFactor(Constant.FontSize.scaleFactor)
                            .aspectRatio(1, contentMode: .fit)
                            .padding(Constant.Pie.inset)
                    )
                    .cardify(isFaceUp: card.isFaceUp)
                    .padding(Constant.inset)
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
        struct Pie {
            static let opacity: Double = 0.4
            static let inset: CGFloat = 5
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
