//
//  BlackCreditCardVisitor.swift
//  DesignPatters
//
//  Created by Camilo Rozo on 19/10/22.
//

import Foundation

class BlackCreditCardVisitor: CreditCardVisitor {
    func gassolineOffer(gassolineOffer: GassolineOffer) {
        print("Descuento 10% en gasolina con tu tarjeta clasica")
    }
    
    func flightOffer(flightOFfer: FligthOffer) {
        print("Descuento 25% en vuelos con tu tarjeta clasica")
    }
    
    
}
