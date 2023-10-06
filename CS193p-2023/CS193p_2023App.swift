//
//  CS193p_2023App.swift
//  CS193p-2023
//
//  Created by Екатерина К on 02.10.2023.
//

import SwiftUI

@main
struct CS193p_2023App: App {
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: EmojiMemoryGame())
        }
    }
}
