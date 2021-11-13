//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Yongwoo Marco on 2021/11/08.
//

import Foundation

final class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🚲", "🚜", "🚐", "🚚", "🛻", "🚒", "🚛", "🛥", "🛰", "🎠", "🚤", "🛫", "🚞", "🚠", "🚈", "🚢", "🛺", "🚌", "🚙", "🚗", "🚎", "🚂", "🚀", "🚁", "🚓"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: [Card] {
        return model.cards
    }
    
    // MARK: - Intent(s)
    func chooes(_ card: Card) {
        model.chooes(card)
    }
}
