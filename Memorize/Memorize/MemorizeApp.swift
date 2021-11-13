//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Yongwoo Marco on 2021/10/28.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMeomoryGameView(game: game)
        }
    }
}
