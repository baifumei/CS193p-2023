import SwiftUI

struct EmojiMemorizeView: View {
    @ObservedObject var game: EmojiMemorizeGame
    
    var body: some View {
        ScrollView {
            cards
        }
        .padding()
    }
    

    
    var widthCard: Float = 60
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: CGFloat(widthCard)))]) {
            ForEach(game.cards) { card in
                CardView(content: card.content).aspectRatio(2/3, contentMode: .fit)
            }
        }.foregroundColor(.blue)
    }
}


struct CardView: View {
    let content: String
    @State var isFaceUp = true
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 25)
            Group {
                base.fill(.white)
                base.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            }.opacity(isFaceUp ? 1 : 0)
            base.fill().opacity(isFaceUp ? 0 : 1)
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}





















struct EmojiMemorizeView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemorizeView(game: EmojiMemorizeGame())
    }
}
