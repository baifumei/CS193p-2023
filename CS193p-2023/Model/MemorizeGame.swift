import Foundation

struct MemorizeGame<CardContent> where CardContent: Equatable {
    private(set) var cards: Array<Card>
    private(set) var score: Int = 0
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = []
        for pairIndex in 0..<max(2, numberOfPairsOfCards) {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: "\(pairIndex+1)a"))
            cards.append(Card(content: content, id: "\(pairIndex+1)b"))
            cards.append(Card(content: content, id: "\(pairIndex+1)c"))
        }
        cards.shuffle()
    }
    
    
    var alreadyChosenCards = Array<Int>()

    mutating func choose(_ card: Card) {
        if alreadyChosenCards.count == 3 {
            if cards[alreadyChosenCards[0]].content == cards[alreadyChosenCards[1]].content  {
                if cards[alreadyChosenCards[1]].content == cards[alreadyChosenCards[2]].content {
                    cards[alreadyChosenCards[0]].isMatched = true
                    cards[alreadyChosenCards[1]].isMatched = true
                    cards[alreadyChosenCards[2]].isMatched = true
                    score += 3
                }
            }
            cards[alreadyChosenCards[0]].isFaceUp = false
            cards[alreadyChosenCards[1]].isFaceUp = false
            cards[alreadyChosenCards[2]].isFaceUp = false
            score -= 1
            alreadyChosenCards = Array<Int>()
        }
        if let chosenIndex = cards.firstIndex(where: { $0.id == card.id }) {
            if !cards[chosenIndex].isFaceUp {
                cards[chosenIndex].isFaceUp = true
                alreadyChosenCards.append(chosenIndex)
            } else if cards[chosenIndex].isFaceUp {
                if alreadyChosenCards.count <= 2 {
                    if alreadyChosenCards.contains(chosenIndex) {
                        cards[chosenIndex].isFaceUp = false
                        alreadyChosenCards = alreadyChosenCards.filter(){$0 != chosenIndex}
                    }
                }
            }
        }
    }
    
    
    struct Card: Equatable, Identifiable {
        var isFaceUp = false
        var isMatched = false
        var content: CardContent
        var id: String
    }
}


extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
