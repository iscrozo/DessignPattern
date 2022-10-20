//
//  FligthOffer.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class FligthOffer: OfferElement {
    func accept(visitor: CreditCardVisitor) {
        visitor.flightOffer(flightOFfer: self)
    }
    
    
}
