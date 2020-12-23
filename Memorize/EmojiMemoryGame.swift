//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Manh Tai on 12/23/20.
//

import SwiftUI


class EmojiMemoryGame {
    private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["🤣", "😎", "😱", "😇", "😙"]
        return MemoryGame<String>(numberOfPairs: Int.random(in: 2...emojis.count)) {
            index in
            emojis[index]
        }
    }
    
    // MARK: - Access to model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intents
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
