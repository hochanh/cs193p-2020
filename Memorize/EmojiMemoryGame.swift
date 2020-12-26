//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Manh Tai on 12/23/20.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = themes[Int.random(in: 0..<themes.count)]
        return MemoryGame<String>(numberOfPairs: emojis.count) {
            index in
            emojis[index]
        }
    }
    
    static let themes: [[String]] = [
        ["🤣", "😎", "😱", "😇", "😙"],
        ["🐱", "🐭", "🐨", "🐽", "🙊"],
        ["📞", "📻", "⏳", "💸", "💵"],
    ]
    
    // MARK: - Access to model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intents
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    func resetGame() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
