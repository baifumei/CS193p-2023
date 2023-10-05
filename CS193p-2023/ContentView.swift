//
//  ContentView.swift
//  CS193p-2023
//
//  Created by Екатерина К on 02.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var theme: Theme = .animals
    
    var body: some View {
        VStack {
            Text("Memorize!").font(.largeTitle)
            ScrollView {
                cards
            }
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

    var randomInt: Int {
        return Int.random(in: 4...theme.emojis.count)
    }
    
    var widthCard: Float = 60
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: CGFloat(widthCard)))]) {
            ForEach(theme.emojis.shuffled()[0..<randomInt], id: \.self) { emoji in
                CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
//                CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
            }
        }.foregroundColor(theme.backColor)
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
