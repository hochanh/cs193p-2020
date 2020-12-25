//
//  Cardify.swift
//  Memorize
//
//  Created by Manh Tai on 12/25/20.
//

import SwiftUI

struct Cardify: ViewModifier {
    var isFaceUp: Bool
    
    func body(content: Content) -> some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(lineWidth: edgeLineWidth)
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(Color.white)
                content
            } else {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(Color.blue)
            }
        }
    }
    
    private let cornerRadius: CGFloat = 25.0
    private let edgeLineWidth: CGFloat = 3
}


extension View {
    func cardify(isFaceUp: Bool) -> some View {
        modifier(Cardify(isFaceUp: isFaceUp))
    }
}
