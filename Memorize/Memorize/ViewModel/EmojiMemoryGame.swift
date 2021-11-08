//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Yongwoo Marco on 2021/11/08.
//

import Foundation

final class EmojiMemoryGame {
    static let emojis = ["🚲", "🚜", "🚐", "🚚", "🛻", "🚒", "🚛", "🛥", "🛰", "🎠", "🚤", "🛫", "🚞", "🚠", "🚈", "🚢", "🛺", "🚌", "🚙", "🚗", "🚎", "🚂", "🚀", "🚁", "🚓"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: [MemoryGame<String>.Card] {
        return model.cards
    }
}
