//
//  Array+Only.swift
//  Memorize
//
//  Created by Manh Tai on 12/24/20.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
