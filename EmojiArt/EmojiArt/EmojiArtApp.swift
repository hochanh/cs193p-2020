//
//  EmojiArtApp.swift
//  EmojiArt
//
//  Created by Manh Tai on 12/26/20.
//

import SwiftUI

@main
struct EmojiArtApp: App {
    var body: some Scene {
        WindowGroup {
            EmojiArtDocumentView(document: EmojiArtDocument())
        }
    }
}
