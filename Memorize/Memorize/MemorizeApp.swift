//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Yongwoo Marco on 2021/10/28.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
