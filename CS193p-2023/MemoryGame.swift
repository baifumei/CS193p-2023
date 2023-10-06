//
//  MemoryGame.swift
//  CS193p-2023
//
//  Created by Екатерина К on 06.10.2023.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(_ card: Card) {
        //
    }
    
    struct Card {
        var isFaceUp = false
        var isMatched = false
        var content: CardContent
    }
}
