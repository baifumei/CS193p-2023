import SwiftUI

struct EmojiMemorizeView: View {
    @ObservedObject var game: EmojiMemorizeGame
    
    var body: some View {
        VStack {
            ScrollView {
                cards
            }
            button
        }
        .padding()
    }
    

    
    var widthCard: Float = 60
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: CGFloat(widthCard)))]) {
            ForEach(game.cards) { card in
                CardView(content: card.content).aspectRatio(2/3, contentMode: .fit)
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
