//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by Manh Tai on 12/23/20.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame = EmojiMemoryGame()
    
    var body: some View {
        Grid(viewModel.cards) {
            card in
            CardView(card: card).onTapGesture {
                viewModel.choose(card: card)
            }
            .padding(5)
        }
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        .padding()
    }
}


struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        GeometryReader {
            geometry in
            ZStack {
                if card.isFaceUp {
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(lineWidth: edgeLineWidth)
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .fill(Color.white)
                    Text(card.content)
                } else {
                    if !card.isMatched {
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .fill(Color.blue)
                    }
                }
            }
            .font(Font.system(size: fontSizeForSize(for: geometry.size)))
        }
    }
    
    // MARK: - Constants
    let cornerRadius: CGFloat = 25.0
    let edgeLineWidth: CGFloat = 3
    let scaleFactor: CGFloat = 0.75
    
    func fontSizeForSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * scaleFactor
    }
}

































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView()
    }
}
