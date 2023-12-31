//
//  EmojiMemoryGameView.swift
//  CS193p-2023
//
//  Created by Екатерина К on 02.10.2023.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    typealias Card = MemoryGame<String>.Card
    
    @ObservedObject var viewModel: EmojiMemoryGame
    
    private let aspectRatio: CGFloat = 2/3
    private let spacing: CGFloat = 4
    
    
    var body: some View {
        VStack {
            cards
                .foregroundColor(viewModel.color)
            HStack {
                score
                Spacer()
                shuffle
            }
        }.padding()
    }
    
    var score: some View {
        Text("Score: \(viewModel.score)")
            .animation(nil)
    }
    
    var shuffle: some View {
        Button("Shuffle!") {
            withAnimation {
                viewModel.shuffle()
            }
        }
    }
    
    var cards: some View {
        AspectVGrid(viewModel.cards, aspectRatio: aspectRatio) { card in
            CardView(card)
                .padding(spacing)
                .overlay(FlyingNumber(number: scoreChange(causedBy: card)))
                .onTapGesture {
                    withAnimation {
                        viewModel.choose(card)
                    }
                }
        }
    }
    
    private func scoreChange(causedBy: Card) -> Int {
        return 0
    }
}





struct EmojiMemoryGameView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
