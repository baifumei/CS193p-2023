import SwiftUI

struct EmojiMemorizeView: View {
    @ObservedObject var game: EmojiMemorizeGame
    
    var body: some View {
        VStack {
            HStack {
                Text(game.title).font(.title)
                Spacer()
                Text("Score: \(game.score)")
            }
            cards
                .animation(.easeInOut(duration: 0.5), value: game.cards)
            button
                .animation(.easeInOut(duration: 0.5), value: game.cards)
        }
        .padding()
    }
    

    
    var widthCard: Float = 70
    
    var cards: some View {
        GeometryReader { geometry in
            let gridItemSize = gridItemWidthThatFits(
                count: game.cards.count,
                size: geometry.size,
                atAspectRetio: 2/3)
            LazyVGrid(columns: [GridItem(.adaptive(minimum: gridItemSize), spacing: 0)], spacing: 0) {
                ForEach(game.cards) { card in
                    CardView(card)
                        .aspectRatio(2/3, contentMode: .fit)
                        .padding(2)
                        .onTapGesture {
                            game.choose(card)
                        }
                }
            }
        }.foregroundColor(game.color)
    }
    
    func gridItemWidthThatFits(
        count: Int,
        size: CGSize,
        atAspectRetio aspectRetio: CGFloat
    ) -> CGFloat {
        let count = CGFloat(count)
        var columnCount = 1.0
        repeat {
            let width = size.width / columnCount
            let height = width / aspectRetio
            
            let rowCount = (count / columnCount).rounded(.up)
            if rowCount * height < size.height {
                return (size.width / columnCount).rounded(.down)
            }
            columnCount += 1
        } while columnCount < count
        return min(size.width / count, size.height * aspectRetio).rounded(.down)
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




















struct EmojiMemorizeView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemorizeView(game: EmojiMemorizeGame())
    }
}
