//
//  ContentView.swift
//  Memorize
//
//  Created by Manh Tai on 12/23/20.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame = EmojiMemoryGame()
    
    var body: some View {
        HStack{
            ForEach(viewModel.cards) {
                card in
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card)
                }
            }
        }
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        .padding()
        .font(viewModel.cards.count < 4 ? Font.largeTitle : Font.title)
    }
}


struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .stroke(lineWidth: 3.0)
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .fill(Color.white)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .fill(Color.blue)
            }
            
        }
        .aspectRatio(2/3, contentMode: .fit)
    }
}

































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
