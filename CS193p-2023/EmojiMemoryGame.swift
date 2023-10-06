//
//  EmojiMemoryGame.swift
//  CS193p-2023
//
//  Created by Екатерина К on 06.10.2023.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["🐲", "🥢", "🥟", "🧋", "👺", "👘", "🐼", "🎋", "🍊", "🫕", "🥮", "🥠", "🍚", "🥡", "🏸", "🧧", "🫖", "🇨🇳", "🏮", "🀄️"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame<String>(numberOfPairsOfCards: 7) { pairIndex in
            if emojis.indices.contains(pairIndex) {
                return emojis[pairIndex]
            } else {
                return "⁉️"
            }
        }
    }
    
    private var model = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    //MARK: - Intents:
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
