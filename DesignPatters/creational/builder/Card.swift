//
//  Card.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 16/10/22.
//

import Foundation

class Card {
    private var cardType: String = ""
    private var number: String = ""
    private var expired: Int = 0
    /**
        private var .....
        private var .....
        etc...
    */
    
    func showCard() {
        print("Tarjeta \(cardType) - \(number) - \(expired)")
    }
    
    class CardBuilder {
        private var innerCard = Card()
        
        func carType(cardType: String) -> CardBuilder {
            innerCard.cardType = cardType
            return self
        }
        
        func numberCard( number: String) -> CardBuilder {
            innerCard.number = number
            return self
        }
        
        func expiredCard(expired: Int) -> CardBuilder {
            innerCard.expired = expired
            return self
        }
        
        func build() -> Card {
            return innerCard
        }
    }
}
