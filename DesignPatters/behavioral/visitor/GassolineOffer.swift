//
//  GassolineOffer.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class GassolineOffer: OfferElement {
    func accept(visitor: CreditCardVisitor) {
        visitor.gassolineOffer(gassolineOffer: self)
    }
    
    
}
