//
//  ContentView.swift
//  CS193p-2023
//
//  Created by Екатерина К on 02.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var theme: Theme = .animals
    @State var cardCount: Int = 7
    
    var body: some View {
        VStack {
            Text("Memorize!").font(.largeTitle)
            ScrollView {
                cards
            }
            Spacer()
            cardCountAdjusters
            Spacer()
            button
        }

        .padding()
    }
    
    
    var button: some View {
        HStack(alignment: .center) {
            ForEach(Theme.allCases, id: \.self) { theme in
                Button (action: {
                    self.theme = theme
                }, label: {
                    VStack {
                        Image(systemName: theme.systemName)
                        Text(theme.title)
                    }.foregroundColor(theme.backColor)
                        .imageScale(.large)
                        .padding(.horizontal, 6)
                })
            }
        }
    }

    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 60))]) {
            ForEach(0..<cardCount, id: \.self) { emoji in
                CardView(content: theme.emojis[emoji]).aspectRatio(2/3, contentMode: .fit)
            }
        }.foregroundColor(theme.backColor)
    }
    
    var cardCountAdjusters: some View {
        HStack {
            cardRemover
            Spacer()
            cardAdder
        }.imageScale(.large)
    }
     
    func cardCountAdjuster(by offset: Int, symbol: String) -> some View {
        Button(action: {
            cardCount += offset
        }, label: {
            Image(systemName: symbol)
        }).disabled(cardCount + offset < 1 || cardCount + offset > theme.emojis.count)
    }
    
    var cardRemover: some View {
        cardCountAdjuster(by: -1, symbol: "rectangle.stack.badge.minus.fill").foregroundColor(.black)
    }
    
    var cardAdder: some View {
        cardCountAdjuster(by: 1, symbol: "rectangle.stack.badge.plus.fill").foregroundColor(.black)
    }
}

enum Theme: CaseIterable {
    case china, professions, animals, parties
    
    var title: String {
        switch self {
        case .china:
            return "China"
        case .professions:
            return "Professions"
        case .animals:
            return "Animals"
        case .parties:
            return "Parties"
        }
    }
    
    var backColor: Color {
        switch self {
        case .china:
            return .red
        case .professions:
            return .purple
        case .animals:
            return .orange
        case .parties:
            return .green
        }
    }
    
    var emojis: [String] {
        switch self {
        case .china:
            return ["🐲", "🥢", "🥟", "🧋", "👺", "👘", "🐼", "🎋", "🍊", "🫕", "🥮", "🥠", "🍚", "🥡", "🏸", "🧧", "🫖", "🇨🇳", "🏮", "🀄️"]
        case .professions:
            return ["🧑🏼‍🌾", "👨🏻‍🍳", "👩🏽‍🏫", "👨🏾‍🏭", "💂🏻‍♀️", "🕵🏿", "👩🏼‍⚕️", "👷🏽", "👮🏾‍♂️", "👩🏼‍🎤", "🧑🏿‍💻", "🧑🏻‍💼", "👨🏼‍🔧", "👩🏽‍🔬", "👨🏿‍🎨", "🧑🏾‍🚒", "👩🏻‍✈️", "🧑🏼‍🚀", "👨🏽‍⚖️"]
        case .animals:
            return ["🐅", "🐫", "🦙", "🐆", "🦌", "🐕","🦓", "🐑", "🦍", "🐘", "🦛", "🦘", "🦧", "🦏", "🐪", "🦣", "🦒", "🐄", "🐎", "🐖", "🐈", "🦔", "🐇"]
        case .parties:
            return ["💃🏻", "🕺🏼", "🪩", "🎁", "🥂", "🎂", "🎆", "🎇", "🎉", "👯‍♀️", "💐", "🍱", "🍧", "🍭", "🍹", "🍷", "🛼", "🤹🏼‍♀️", "🎺", "🎳", "🎮", "🚤", "🛥️", "🎢", "🎡", "🎠", "🔮", "🎶"]
        }
    }
    
    var systemName: String {
        switch self {
        case .china:
            return "flag.fill"
        case .professions:
            return "person.badge.clock.fill"
        case .animals:
            return "pawprint.fill"
        case .parties:
            return "sparkles"
        }
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





















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
