import Foundation

struct MemorizeGame<CardContent> {
    private var cards: Array<Card>
    
    
    private func choose(_ card: Card) {
        //
    }
    mutating func shuffle() {
        cards.shuffle()
    }
    
    
    struct Card {
        var isFaceUp = true
        var isMatched = false
        var content: CardContent
    }
}
