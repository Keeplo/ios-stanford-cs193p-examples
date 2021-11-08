//
//  MemoryGame.swift
//  Memorize
//
//  Created by Yongwoo Marco on 2021/11/08.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: [Card]
    
    func chooes(_ card: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = [Card]()
        // add numberOFPairsOfCards * 2 cards
        for pairIndex in 0..<numberOfPairsOfCards {
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(contetn: content))
            cards.append(Card(contetn: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var contetn: CardContent
    }
}
