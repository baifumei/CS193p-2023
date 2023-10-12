import SwiftUI

class EmojiMemorizeGame: ObservableObject {
    enum Theme: CaseIterable {
        case china, professions, animals, parties, flags
        
        var name: String {
            switch self {
            case .china:
                return "China"
            case .professions:
                return "Professions"
            case .animals:
                return "Animals"
            case .parties:
                return "Parties"
            case .flags:
                return "Flags"
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
            case .flags:
                return .blue
            }
        }
        
        var emojis: [String] {
            switch self {
            case .china:
                return ["🐲", "🥢", "🥟", "🧋", "👺", "👘", "🐼", "🎋", "🍊", "🫕", "🥮", "🥠", "🍚", "🥡", "🏸", "🧧", "🫖", "🏮", "🀄️"]
            case .professions:
                return ["🧑🏼‍🌾", "👨🏻‍🍳", "👩🏽‍🏫", "👨🏾‍🏭", "💂🏻‍♀️", "🕵🏿", "👩🏼‍⚕️", "👷🏽", "👮🏾‍♂️", "👩🏼‍🎤", "🧑🏿‍💻", "🧑🏻‍💼", "👨🏼‍🔧", "👩🏽‍🔬", "👨🏿‍🎨", "🧑🏾‍🚒", "👩🏻‍✈️", "🧑🏼‍🚀", "👨🏽‍⚖️"]
            case .animals:
                return ["🐅", "🐫", "🦙", "🐆", "🦌", "🐕","🦓", "🐑", "🦍", "🐘", "🦛", "🦘", "🦧", "🦏", "🐪", "🦣", "🦒", "🐄", "🐎", "🐖", "🐈", "🦔", "🐇"]
            case .parties:
                return ["💃🏻", "🕺🏼", "🪩", "🎁", "🥂", "🎂", "🎆", "🎇", "🎉", "👯‍♀️", "💐", "🍱", "🍧", "🍭", "🍹", "🍷", "🛼", "🤹🏼‍♀️", "🎺", "🎳", "🎮", "🚤", "🛥️", "🎢", "🎡", "🎠", "🔮", "🎶"]
            case .flags:
                return ["🇦🇷", "🇦🇲", "🇦🇺", "🇧🇩", "🇧🇾", "🇧🇪", "🇧🇷", "🇨🇦", "🇨🇳", "🇨🇮", "🇨🇿", "🇩🇰", "🇪🇪", "🇫🇮", "🇫🇷", "🇬🇪", "🇩🇪",  "🇬🇷", "🇭🇺", "🇮🇱", "🇯🇵", "🇵🇼", "🇵🇭", "🇵🇱", "🇷🇴", "🇷🇺", "🇸🇬", "🇰🇷", "🇪🇸", "🇸🇪", "🇹🇷", "🇺🇦", "🇬🇧", "🏴󠁧󠁢󠁥󠁮󠁧󠁿", "🇺🇸"]
            }
        }
        
        var title: String {
            let emoji = emojis.randomElement()
            return "\(name) \(String(describing: emoji))"
        }
        
        var pairCount: Int {
            return Int.random(in: 4..<emojis.count)
        }
    }
    
    private static func createMemorizeGame(theme: Theme = .china) -> MemorizeGame<String> {
        return MemorizeGame<String>(numberOfPairsOfCards: theme.pairCount) { pairIndex in
            if theme.emojis.indices.contains(pairIndex) {
                return theme.emojis[pairIndex]
            } else {
                return "⁉️"
            }
        }
    }
    
    @Published private var model = createMemorizeGame()

    var cards: Array<MemorizeGame<String>.Card> {
        return model.cards
    }
    
    
//MARK: Intents
    func choose() {
        //
    }
}
