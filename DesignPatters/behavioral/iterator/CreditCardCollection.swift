//
//  CreditCardCollection.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 17/10/22.
//

import Foundation

class CreditCardCollection {
    
    var items = [CreditCard]()
    
    func append(_ item: CreditCard) {
        self.items.append(item)
    }
    
}

extension CreditCardCollection: Sequence {

    func makeIterator() -> CreditCardIterator {
        return CreditCardIterator(cards: self)
    }
    
}
