//
//  CreditCardIterator.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 17/10/22.
//

import Foundation

class CreditCardIterator: IteratorProtocol {
    
    private var position = 0
    let cards: CreditCardCollection
    
    init(cards: CreditCardCollection){
        self.cards = cards
    }
    
    func next() -> CreditCard? {
        defer {
            position += 1
        }
        return cards.items.count > position ? cards.items[position] : nil
    }
    
        
}
