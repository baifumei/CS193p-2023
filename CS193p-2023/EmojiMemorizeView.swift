import SwiftUI

struct EmojiMemorizeView: View {
    @ObservedObject var game: EmojiMemorizeGame
    
    var body: some View {
        VStack {
            Text(game.title).font(.title)
            ScrollView {
                cards
                    .animation(.easeInOut(duration: 0.5), value: game.cards)
            }
            button.animation(.easeInOut(duration: 0.5), value: game.cards)
        }
        .padding()
    }
    

    
    var widthCard: Float = 60
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: CGFloat(widthCard)))]) {
            ForEach(game.cards) { card in
                CardView(card)
                    .aspectRatio(2/3, contentMode: .fit)
                    .onTapGesture {
                        game.choose(card)
                    }
            }
        }.foregroundColor(game.color)
            
    }
    
    var button: some View {
        Button(action: {
            game.newGame()
            
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: 20).frame(width: 200, height: 50).foregroundColor(game.color)
                Text("New Game!").foregroundColor(.white).bold()
            }
        })
    }
}


struct CardView: View {
    var card: MemorizeGame<String>.Card
    
    init(_ card: MemorizeGame<String>.Card) {
        self.card = card
    }
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 25)
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 3)
                Text(card.content).font(.largeTitle)
            }.opacity(card.isFaceUp ? 1 : 0)
            base.fill().opacity(card.isFaceUp ? 0 : 1)
        }
        .opacity(card.isFaceUp || !card.isMatched ? 1 : 0)
    }
}





















struct EmojiMemorizeView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemorizeView(game: EmojiMemorizeGame())
    }
}
