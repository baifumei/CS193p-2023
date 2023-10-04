//
//  ContentView.swift
//  CS193p-2023
//
//  Created by Екатерина К on 02.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State var cardCount: Int = 14
    @State var theme: Theme = .china
    
    var body: some View {
        VStack {
            Text("Memorize!").font(.largeTitle)
            
            TabView() {
                //theme 1
                ScrollView {
                    cards
                }.tabItem {
                    Image(systemName: "flag.fill")
                    Text("China")
                }.onAppear() {
                    self.theme = .china
                }
                
                //theme 2
                ScrollView {
                    cards
                }.tabItem {
                    Image(systemName: "person.badge.clock.fill")
                    Text("Professions")
                }.onAppear() {
                    self.theme = .professions
                }
                
                //theme 3
                ScrollView {
                    cards
                }.tabItem {
                    Image(systemName: "pawprint.fill")
                    Text("Africa")
                }.onAppear() {
                    self.theme = .africa
                }
            }.accentColor(theme.backColor)
        }
        .padding(4)
    }
    
    var cards: some View {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
            ForEach(0..<cardCount, id: \.self) { emoji in
                CardView(content: theme.emojis[emoji]).aspectRatio(2/3, contentMode: .fit)
            }
        }.foregroundColor(theme.backColor)
    }
}



enum Theme: Int, CaseIterable {
    case china, professions, africa
    
    var emojis: [String] {
        switch self {
        case .china:
            return ["🇨🇳", "🐲", "🥢", "🥟", "🧋", "👺", "👘", "🐼", "🎋", "🍊", "🫕", "🥮", "🥠", "🀄️", "🍚", "🥡", "🏸", "🧧"]
        case .professions:
            return ["🧑🏼‍🌾", "👨🏻‍🍳", "👩🏽‍🏫", "👨🏾‍🏭", "💂🏻‍♀️", "🕵🏿", "👩🏼‍⚕️", "👷🏽", "👮🏾‍♂️", "👩🏼‍🎤", "🧑🏿‍💻", "🧑🏻‍💼", "👨🏼‍🔧", "👩🏽‍🔬", "👨🏿‍🎨", "🧑🏾‍🚒", "👩🏻‍✈️", "🧑🏼‍🚀", "👨🏽‍⚖️"]
        case .africa:
            return ["🐫", "🌴", "🐆", "🥥", "🦎","🦓", "☀️", "🐅", "🐘", "🦛", "🦘", "🐍", "🦏", "🐪"]
        }
    }
    
    var backColor: Color {
        switch self {
        case .china: return .red
        case .professions: return .purple
        case .africa: return .orange
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
